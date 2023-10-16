package br.itb.projeto.fiebaccess.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.itb.projeto.fiebaccess.model.entity.Profissional;

public interface ProfissionalRepository extends JpaRepository<Profissional, Long> {

}
