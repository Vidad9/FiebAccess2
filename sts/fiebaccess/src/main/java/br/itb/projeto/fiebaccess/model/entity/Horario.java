package br.itb.projeto.fiebaccess.model.entity;

import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Horario")
public class Horario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_Horario;

    private Time horaInicio;
    private Time horaFim;
    private String diaSemana;
    private String statusHorario;
    
    @ManyToOne
    @JoinColumn(name = "consulta_id")
    private Consulta consulta;

    // Getters and Setters

    public int getId_Horario() {
        return id_Horario;
    }

    public void setId_Horario(int id_Horario) {
        this.id_Horario = id_Horario;
    }

    public Time getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(Time horaInicio) {
        this.horaInicio = horaInicio;
    }

    public Time getHoraFim() {
        return horaFim;
    }

    public void setHoraFim(Time horaFim) {
        this.horaFim = horaFim;
    }

    public String getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String getStatusHorario() {
        return statusHorario;
    }

    public void setStatusHorario(String statusHorario) {
        this.statusHorario = statusHorario;
    }
}



