package br.itb.projeto.fiebaccess.model.service;


import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import br.itb.projeto.fiebaccess.model.entity.Usuario;
import br.itb.projeto.fiebaccess.model.repository.ConsultaRepository;


@Service
public class ConsultaService {
	
	private ConsultaRepository usuarioRepository;

	public ConsultaService(ConsultaRepository consultaRepository) {
		super();
		this.consultaRepository = consultaRepository;
	}
	
	
	public Consulta findByEmail(String email) {
		
		Consulta consulta = consultaRepository.findByEmail(email);
		
		return consulta;
	}
	
	@Transactional
	public Consulta salvar(Usuario usuario) {
		
		
		consulta.setStatusConsulta("ATIVO");
		consulta.setNivelAcesso("USER");
		consulta.setFoto(null);
		consulta.setSenha(usuario.getSenha());
		
		return consulta.Repository.save(usuario);
		
	}
	
	
	@Transactional
	public Consulta acessar(String email, String senha) {
		
		Consulta consulta = usuarioRepository.findByEmail(email);
		
		String _senha = senha;
		
		if (consulta != null && consulta.getStatusUsuario().equals("ATIVO")) {
			
			if (consulta.getData().equals(_data)) {
				
				return consulta;
			}
		}
		return null;	 
	}

}












