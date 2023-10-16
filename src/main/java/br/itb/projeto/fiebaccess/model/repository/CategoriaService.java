package br.itb.projeto.fiebaccess.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.itb.projeto.fiebaccess.model.entity.Categoria;

public interface CategoriaService extends JpaRepository<Categoria, Long>{

}
