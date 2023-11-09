package br.itb.projeto.fiebaccess.model.entity;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Consulta")
public class Consulta {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_Consulta;

    @ManyToOne
    @JoinColumn(name = "id_Usuario")
    private Usuario usuario;
    
    @ManyToOne
    @JoinColumn(name = "id_Horario")
    private Horario horario; // Certifique-se de que o nome da propriedade corresponda ao mapeamento correto no banco de dados
    
    @ManyToOne
    @JoinColumn(name = "id_Profissional")
    private Profissional profissional;

    private Date dataConsulta; // Mapeando a coluna dataConsulta
    
    
	public Horario getHorario() {
		return horario;
	}
	public void setHorario(Horario horario) {
		this.horario = horario;
	}
	public Date getDataConsulta() {
		return dataConsulta;
	}
	public void setDataConsulta(Date dataConsulta) {
		this.dataConsulta = dataConsulta;
	}
	private String statusConsulta;
    
	public int getId_Consulta() {
		return id_Consulta;
	}
	public void setId_Consulta(int id_Consulta) {
		this.id_Consulta = id_Consulta;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public Profissional getProfissional() {
		return profissional;
	}
	public void setProfissional(Profissional profissional) {
		this.profissional = profissional;
	}
	
	public String getStatusConsulta() {
		return statusConsulta;
	}
	public void setStatusConsulta(String statusConsulta) {
		this.statusConsulta = statusConsulta;
	}
    
    

}
