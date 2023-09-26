package br.itb.projeto.fiebaccess.model.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import br.itb.projeto.fiebaccess.model.entity.Usuario;
import br.itb.projeto.fiebaccess.model.repository.UsuarioRepository;


@Service
public class UsuarioService {
	
	private UsuarioRepository usuarioRepository;

	public UsuarioService(UsuarioRepository usuarioRepository) {
		super();
		this.usuarioRepository = usuarioRepository;
	}
	
	@Transactional
	public int acessar(String email, String senha) {
		
		Usuario usuario = usuarioRepository.findByEmail(email);
		
		if (usuario != null && usuario.getStatusUsuario().equals("ATIVO")) {
			
			if (usuario.getSenha().equals(senha)) {
				
				if (usuario.getNivelAcesso().equals("ADMIN")) {
					return 1;
				} else if (usuario.getNivelAcesso().equals("USER")) {
					return 2;
				}
			} else {
				return 0;
			}
		} 
		return 0;	
	}

}
