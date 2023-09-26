package br.itb.projeto.fiebaccess.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api")
public class PageController {
	
	String nome = "Vidad 69";
	
	@GetMapping("/index")
	public String index(Model model) {
		model.addAttribute("nome", nome);
		
		return "index";
	}

}
