<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:useBean id="customerBean" scope="session" class="es.uco.pw.display.useBean.CustomerBean"></jsp:useBean>
<%@ page import="es.uco.pw.data.dao.Usuario.ContactoDAO"%>

<% 
    String nextPage = "../../index.jsp";
    String messageNextPage="";
    if(customerBean == null || customerBean.getEmail()==""){ //El usuario no esta logueado
        String userEmail=request.getParameter("email");
        String password=request.getParameter("password");

        if(userEmail !=null  && password!=null){ //Se han pasado parametros
            ContactoDAO contactoDAO = new contactoDAO;
            if(true/*ContactoValido*/){
%>
    <jsp:setProperty property="email" value="<%=userEmail%>" name="customerBeam" />
<%
            }else{
                nextPage="../view/loginView.jsp"
            }
        }else{//No se han recibido parametros -> reedireccionamos a la vista de login
            nextPage="../view/loginView.jsp";
        }
    }
 %>

<jsp:forward page="<%=nextPage%>">
    <jsp:param name="message" value="<%=messageNextPage%>"/>
</jsp:forward>