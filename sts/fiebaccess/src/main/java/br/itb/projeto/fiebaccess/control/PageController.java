package br.itb.projeto.fiebaccess.control;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	
@GetMapping("/")
public String getIndex() {
	return "land1";
}
	
	
@GetMapping("/sair")
public String logOff(HttpSession session) {
	
	session.removeAttribute("usuarioLogado");
	
	return "redirect:/login";
	
	
}


}
