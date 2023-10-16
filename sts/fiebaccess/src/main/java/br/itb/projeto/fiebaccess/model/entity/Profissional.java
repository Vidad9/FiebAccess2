package br.itb.projeto.fiebaccess.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Profissional")
public class Profissional {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_Prof;

    @ManyToOne
    @JoinColumn(name = "id_Categoria")
    private Categoria categoria;

    private String nome;
    private String email;
    private String senha;
    private String nivelAcesso;
    
    @Column(name = "foto", nullable = false, length = 8000)
    private byte[] foto;

    private String statusUsuario;

	public int getId_Prof() {
		return id_Prof;
	}

	public void setId_Prof(int id_Prof) {
		this.id_Prof = id_Prof;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNivelAcesso() {
		return nivelAcesso;
	}

	public void setNivelAcesso(String nivelAcesso) {
		this.nivelAcesso = nivelAcesso;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public String getStatusUsuario() {
		return statusUsuario;
	}

	public void setStatusUsuario(String statusUsuario) {
		this.statusUsuario = statusUsuario;
	}
	
    
	
}
