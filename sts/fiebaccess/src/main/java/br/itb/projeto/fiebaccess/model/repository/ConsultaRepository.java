package br.itb.projeto.fiebaccess.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.itb.projeto.fiebaccess.model.entity.Consulta;
import br.itb.projeto.fiebaccess.model.entity.Usuario;

public interface ConsultaRepository extends JpaRepository<Consulta, Long>{
	
	List<Consulta> findConsultaByUsuarioId(long userId);

}
