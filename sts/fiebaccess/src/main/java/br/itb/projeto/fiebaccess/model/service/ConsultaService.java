package br.itb.projeto.fiebaccess.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.itb.projeto.fiebaccess.model.entity.Consulta;
import br.itb.projeto.fiebaccess.model.repository.ConsultaRepository;

@Service
public class ConsultaService {
	
	private ConsultaRepository consultaRepository;
	
	public ConsultaService(ConsultaRepository consultaRepository) {
		super();
		this.consultaRepository = consultaRepository;
	}
	
	
	public List<Consulta> findAll() {
		
		
		return consultaRepository.findAll();
	}
	
	
}
