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
	
	
	public Usuario findByEmail(String email) {
		
		Usuario usuario = usuarioRepository.findByEmail(email);
		
		return usuario;
	}
	
	@Transactional
	public Usuario salvar(Usuario usuario) {
		
		
		usuario.setStatusUsuario("ATIVO");
		usuario.setNivelAcesso("USER");
		usuario.setFoto(null);
		usuario.setSenha(usuario.getSenha());
		
		return usuarioRepository.save(usuario);
		
	}
	
	
	@Transactional
	public Usuario acessar(String email, String senha) {
		
		Usuario usuario = usuarioRepository.findByEmail(email);
		
		String _senha = senha;
		
		if (usuario != null && usuario.getStatusUsuario().equals("ATIVO")) {
			
			if (usuario.getSenha().equals(_senha)) {
				
				return usuario;
			}
		}
		return null;	 
	}

}
