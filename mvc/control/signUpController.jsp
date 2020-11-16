<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:useBean id="customerBean" scope="session" class="es.uco.pw.display.useBean.CustomerBean"></jsp:useBean>
<%@ page import="es.uco.pw.data.dao.Usuario.ContactoDAO, es.uco.pw.business.DTO.DTOUsuario.ContactoDTO"%>

<%
    String nextPage="../../index.jsp"; //Por defecto si no hay ningun error redirigira a la pagia principal
    if(customerBean!=null && customerBean.getEmail()!=""){
        ContactoDAO contactoDAO = new ContactoDAO();
        String email;
        ContactoDTO contactoDTO;
    }else{//Si no estas loggueado debes hacerlo para modificar tus datos
        nextPage="../view/loginView.jsp";
    }
%>