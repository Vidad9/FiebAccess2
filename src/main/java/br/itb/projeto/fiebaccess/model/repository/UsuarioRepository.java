package br.itb.projeto.fiebaccess.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.itb.projeto.fiebaccess.model.entity.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
	
	Usuario findByEmail(String email);

}
