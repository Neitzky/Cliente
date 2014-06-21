<%-- 
    Document   : index
    Created on : 20/06/2014, 08:23:27 PM
    Author     : T107
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/libs/jquery/jquery.js"></script>
        <link rel="stylesheet" href="js/libs/twitter-bootstrap/css/bootstrap.css">
        <script> 
            $(document).ready(function(){ 
        //alert("cargando jquery");
        $("#mensaje").click(function(){
            //$("#respuesta").html("ya me puchurraste!! ahora me cumples!! ¬¬!");
        $.ajax({
            /*
             * Los siguientes son aatributos de ajax con jquery
             * siempre separados por comas
             */
            url: 'http://localhost:8090/mavenspring/servicios/hola2/mensaje',
            type:'GET',
            data: {
            },
            success: function (data, textStatus, jqXHR){
                $("#respuesta").html(data);
            },
            
            failure: function(data){
               
                
            }
            
        }); /* Cierra ajax*/
        });
        });
        </script>
    </head>
    <body>
        <h1 id="mensaje" class="btn btn-lg btn-danger" >Apachurrame \(*u*)/ </h1>
        <div id="respuesta">Ya me quiero ir Putitossss</div>
    </body>
</html>
