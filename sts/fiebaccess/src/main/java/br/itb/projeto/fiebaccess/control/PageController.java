package br.itb.projeto.fiebaccess.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.itb.projeto.fiebaccess.model.entity.Usuario;

@Controller
@RequestMapping("/")
public class PageController {
	

	
	@GetMapping("adm")
	public String getLogin(ModelMap model) {
		
		model.addAttribute("usuario", new Usuario());
			
		return "adm";
	}
	
	

}
