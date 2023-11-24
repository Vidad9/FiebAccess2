package br.itb.projeto.fiebaccess.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import br.itb.projeto.fiebaccess.model.entity.Horario;

@Service
public class HorarioService {

	private HorarioRepository horarioRepository;
	
	public HorarioService(HorarioRepository horarioRepository) {
		super();
		this.horarioRepository = horarioRepository;
	}

	
	public List<Horario> findAll() {
		
		return horarioRepository.findAll();
	}
	
	
}

