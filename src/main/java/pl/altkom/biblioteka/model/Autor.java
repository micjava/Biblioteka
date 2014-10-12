/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pl.altkom.biblioteka.model;

/**
 *
 * @author kursant7
 */
public class Autor {
    private String imieAutora;
    private String nazwiskoAutora;
    private String pochodzenieAutora;

    public Autor(String imieAutora, String nazwiskoAutora, String pochodzenieAutora) {
        this.imieAutora = imieAutora;
        this.nazwiskoAutora = nazwiskoAutora;
        this.pochodzenieAutora = pochodzenieAutora;
    }

    public Autor() {
    }

    public String getImieAutora() {
        return imieAutora;
    }

    public void setImieAutora(String imieAutora) {
        this.imieAutora = imieAutora;
    }

    public String getNazwiskoAutora() {
        return nazwiskoAutora;
    }

    public void setNazwiskoAutora(String nazwiskoAutora) {
        this.nazwiskoAutora = nazwiskoAutora;
    }

    public String getPochodzenieAutora() {
        return pochodzenieAutora;
    }

    public void setPochodzenieAutora(String pochodzenieAutora) {
        this.pochodzenieAutora = pochodzenieAutora;
    }
    
}
