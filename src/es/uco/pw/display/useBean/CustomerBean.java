package es.uco.pw.display.useBean;

import java.io.Serializable;


public class CustomerBean implements Serializable{

    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String email="";
    private String nombre="";
    private String apellido="";


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    


    
}