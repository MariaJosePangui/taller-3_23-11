package com.example.taller3_mj_es.model;
public class Artista {
    private String nombreArtista;
    private String generoMusical;

    public Artista(String nombreArtista, String generoMusical) {
        this.nombreArtista = nombreArtista;
        this.generoMusical = generoMusical;
    }
    public String getNombreArtista() {
        return nombreArtista;
    }

    public void setNombreArtista(String nombreArtista) {
        this.nombreArtista = nombreArtista;
    }

    public String getGeneroMusical() {
        return generoMusical;
    }

    public void setGeneroMusical(String generoMusical) {
        this.generoMusical = generoMusical;
    }

    @Override
    public String toString() {
        return "Artista{" +
                "nombreArtista='" + nombreArtista + '\'' +
                ", generoMusical='" + generoMusical + '\'' +
                '}';
    }
}
