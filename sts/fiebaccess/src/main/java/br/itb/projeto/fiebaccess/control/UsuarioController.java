package br.itb.projeto.fiebaccess.control;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.itb.projeto.fiebaccess.model.entity.Usuario;
import br.itb.projeto.fiebaccess.model.service.UsuarioService;


@Controller
public class UsuarioController {
	
	private UsuarioService usuarioService;

	public UsuarioController(UsuarioService usuarioService) {
		super();
		this.usuarioService = usuarioService;
	}
	
	private String serverMessage = null;
	
	@GetMapping("/login")
	public String getLogin(ModelMap model) {
		
		model.addAttribute("usuario", new Usuario());
		model.addAttribute("serverMessage", serverMessage);
		
		return "login";
	}

	@PostMapping("/acessar")
	public String acessar(
			@RequestParam("email") String email, 
			@RequestParam("senha") String senha, ModelMap model, HttpSession session) {
		

		Usuario usuario = usuarioService.acessar(email, senha);

		if (usuario != null) {
			
			session.setAttribute("usuarioLogado", usuario);
			model.addAttribute("usuario", usuario);
			
			if (usuario.getNivelAcesso().equals("ADM")) {
				
				return "redirect:/admin/home";
				
			} else if (usuario.getNivelAcesso().equals("USER")) {
				
				return "redirect:/user/home";
				
			}
	
		}
		
		serverMessage = "Dados Incorretos!";
		model.addAttribute("serverMessage", serverMessage);
		
		return "redirect:/login";
	}
	
	@GetMapping("/registro")
	public String getRegistro(ModelMap model) {
		
		model.addAttribute("usuario", new Usuario());
		
		
		return "index";
	}
	
	@PostMapping("/registrar")
	public String postRegistro(ModelMap model, @ModelAttribute("usuario") Usuario usuario) {
		
		Usuario _usuario = usuarioService.findByEmail(usuario.getEmail());
		if(_usuario == null) {
			
			usuarioService.salvar(usuario);
			model.addAttribute("usuario", new Usuario());
			serverMessage = "Usuario cadastrado com sucesso";
			
			
		} else if(_usuario != null) {
			
			model.addAttribute("usuario", new Usuario());
			serverMessage = "Usuario já cadastrado no banco";
			
		}
		
		if(usuario.getNome().equals("") || usuario.getEmail().equals("") || usuario.getSenha().equals("")) {
			serverMessage = "Dados Incompletos!";
		}
		
		
		return "redirect:/registro";
	}
	
	
	@GetMapping("/admin/home")
	public String getHomeAdm(ModelMap model) {
		
		return "adm";
	}

}
