<%-- 
    Document   : RegistroInventario
    Created on : 12/08/2015, 07:57:33 AM
    Author     : fredyalexander
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Free The Brewery  Website Template | About :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link href="Diseño/css/style.css" rel="stylesheet" type="text/css"/>
<link href="Diseño/css/slider.css" rel="stylesheet" type="text/css"/>
<script src="Diseño/js/jquery.min.js" type="text/javascript"></script>
<script src="Diseño/js/slidermodernizr.custom.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="DataTables/media/css/jquery.dataTables.css">
<script src="DataTables/media/js/jquery.dataTables.js" type="text/javascript"></script>
</head>
 <body>
   <!------ Background slider ------->
 	<div class="slider">
 	      <ul id="cbp-bislideshow" class="cbp-bislideshow">
					<li><img src="Diseño/images/1.jpg" alt="image01"/></li>
					<li><img src="Diseño/images/2.jpg" alt="image02"/></li>
					<li><img src="Diseño/images/3.jpg" alt="image03"/></li>
					<li><img src="Diseño/images/4.jpg" alt="image04"/></li>
					<li><img src="Diseño/images/5.jpg" alt="image05"/></li>
					<li><img src="Diseño/images/6.jpg" alt="image06"/></li>
				</ul>    
	   <script src="Diseño/js/jquery.imagesloaded.min.js"></script>
		<script src="Diseño/js/cbpBGSlideshow.min.js"></script>
		<script>
			$(function() {
				cbpBGSlideshow.init();
			});
		</script>
	 </div>
	 <!------ End Background slider ------->
	    <div class="header_top">
		 	  <div class="wrap">	 			
				<div class="logo">
					<a href="index.html"><img src="Diseño/images/logo.png" alt=""></a>
				</div>	
				<div class="nav">			
				  <ul>
					<li><a href="index.html">Home</a></li>
			    	<li><a href="about.html">About</a></li>
			    	<li><a href="events.html">Gallery</a></li>
			    	<li><a href="events.html">Events</a></li>
			    	<li><a href="blog.html">Blog</a></li>
			    	<li><a href="contact.html">Contact</a></li>
			       </ul>	
                               <div class="clear"></div>
			    </div>	 
 				<div class="clear"></div>		   
 	   		</div>
 	     </div>
         <!--contenido-->
	       <div class="wrap">
	        <div class="main">	        	
	        		<div class="section group">
                                    <div class="col_1_of_3 contact_1_of_3">
                                        <div class="contact-form">
                                            <h3>Registro</h3>
                                            <form action="SInventario?i=mtdInventario" method="POST" var="InventarioUpdate">
                                                
					    	<div>
                                                    <span><input type="text" name="codigo" class="textbox" placeholder="Codigo Producto" value="${InventarioUpdate.codigoI}" required="" autofocus=""></span>
						</div>
        				    	<div>
                                                    <span><input type="text" name="cantidad" class="textbox" placeholder="Cantidad Producto" value="${InventarioUpdate.cantidadI}" required=""></span>
						</div>
                                                <!--<div>
                                                    <span><input type="submit" value="Guardar"></span>
						</div>-->
					    <!--</form>-->
                                        </div>
                                    </div>
                                    
                                    <div class="col_1_of_3 contact_1_of_3">
                                        <div class="contact-form">
                                            <br/><br/><br/><br/><br/>
                                            <!--<form action="SInventario?i=mtdInventario" method="POST">-->
                                                <div>
                                                    <span><input type="text" name="nombre" class="textbox" placeholder="Nombre Producto" value="${InventarioUpdate.nombreI}" required=""></span>
						</div>
                                                <div>
                                                    <span><input type="text" name="valor" class="textbox" placeholder="Valor Producto" value="${InventarioUpdate.valorI}" required=""></span>
						</div>
                                                <div>
                                                    <span><input type="submit" value="Guardar"></span>
						</div>
					    </form>
                                        </div>
                                    </div>
                                    
                                    <div class="">
					<div class="company_address">
				     	<h3>Productos</h3>
                                        <table id="productos-grid" class="">
                                            <thead>
                                            <tr>
                                                <td>Codigo</td>
                                                <td>Cantidad</td>
                                                <td>Nombre</td>
                                                <td>Valor</td>
                                                <td>Acciones</td>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${Inventario}" var="inv">
                                                <tr>
                                                    <td>${inv.codigoI}</td>
                                                    <td>${inv.cantidadI}</td>
                                                    <td>${inv.nombreI}</td>
                                                    <td>${inv.valorI}</td>
                                                    <td><a href="SInventario?i=update&d=${inv.idInventario}"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;&nbsp;
                                                        <a href="SInventario?i=dalete&d=${inv.idInventario}"><i class="fa fa-trash"></i></a></td>
                                                    
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
				   </div>
				</div>
                                </div>
	          </div>        
	        </div>
	          <div class="copy_right">
	        	<div class="wrap">
				  <p>Company Name © All rights Reseverd | Design by  <a href="http://w3layouts.com"> W3Layouts </a></p>
		       </div>
		   </div>
      </body>
<script type="text/javascript">
 $(document).ready( function () {
    $('#productos-grid').DataTable();
} );	
 
</script>
 </html>
