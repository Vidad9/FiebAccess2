package br.itb.projeto.fiebaccess.model.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Categoria")
public class Categoria {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idCategoria;

    private String nome;
    private String descricao;
    private String statusCategoria;
    
    
    
	public int getId_Categoria() {
		return idCategoria;
	}
	public void setId_Categoria(int id_Categoria) {
		this.idCategoria = id_Categoria;
	}
	public String getNome_Prof() {
		return nome;
	}
	public void setNome_Prof(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getStatusCategoria() {
		return statusCategoria;
	}
	public void setStatusCategoria(String statusCategoria) {
		this.statusCategoria = statusCategoria;
	}
    
    
    
	
	
}
