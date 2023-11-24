package br.itb.projeto.fiebaccess.model.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.itb.projeto.fiebaccess.model.entity.Horario;

@Repository
public interface HorarioRepository extends JpaRepository<Horario, Long> {
	
	public List<Horario> findAll();
	
	
}
