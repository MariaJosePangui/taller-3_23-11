package com.example.taller3_mj_es.model;

import java.util.List;

public class EventoMusical {
    private String nombreEvento;
    private String fecha;
    private String lugar;
    private List<String> artistas;

    public EventoMusical(String nombreEvento, String fecha, String lugar, List<String> artistas) {
        this.nombreEvento = nombreEvento;
        this.fecha = fecha;
        this.lugar = lugar;
        this.artistas = artistas;
    }
    public String getNombreEvento() {
        return nombreEvento;
    }

    public void setNombreEvento(String nombreEvento) {
        this.nombreEvento = nombreEvento;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public List<String> getArtistas() {
        return artistas;
    }

    public void setArtistas(List<String> artistas) {
        this.artistas = artistas;
    }
    @Override
    public String toString() {
        return "EventoMusical{" +
                "nombreEvento='" + nombreEvento + '\'' +
                ", fecha='" + fecha + '\'' +
                ", lugar='" + lugar + '\'' +
                ", artistas=" + artistas +
                '}';
    }
}

