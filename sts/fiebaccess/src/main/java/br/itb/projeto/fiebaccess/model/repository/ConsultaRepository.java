package br.itb.projeto.fiebaccess.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.itb.projeto.fiebaccess.model.entity.Consulta;

public interface ConsultaRepository extends JpaRepository<Consulta, Long>{
	
	List<Consulta> findByUsuarioId(long id);

}
