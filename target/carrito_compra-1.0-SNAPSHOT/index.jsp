<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("lista")==null){
    
        ArrayList<String>lis= new ArrayList<String>();
        
        session.setAttribute("lista", lis);
    }
    ArrayList<String> lista=(ArrayList<String>)session.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body <text="red" >
    <center>
        <fieldset style="background-color:Beige;border:6px groove #ccc;width:350px">
            <legend><h1>Carrito de Compras</h1></legend>
        <p>Inserte los productos que desea: </p>
        <form action="ProcesaServlet" method="post">
            
            Producto: <input type="text" name="producto">
            <input type="submit" value="Enviar">  
            
        </form>
        <br><!-- comment -->
        <a href="ProcesaServlet">Vaciar Carrito</a>
    </fieldset>
        <fieldset style="background-color:#F8ECE0;border:6px groove #ccc;width:350px">
        <h3>Contenido del Carrito</h3>
        
        <ul>
            <%if(lista !=null){
                for(String item:lista){
            %>
            <li><%=item %></li>
            <%
                }
            }   
            %>    
        </ul>
        </fieldset>
    </center>
    </body>
</html>
