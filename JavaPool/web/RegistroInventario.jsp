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
<link href="Diseño/css/style.css" rel="stylesheet" type="text/css"/>
<link href="Diseño/css/slider.css" rel="stylesheet" type="text/css"/>
<script src="Diseño/js/jquery.min.js" type="text/javascript"></script>
<script src="Diseño/js/slidermodernizr.custom.js" type="text/javascript"></script>
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
                                            <form action="SInventario?i=mtdInventario" method="POST">
					    	<div>
                                                    <span><input type="text" name="codigo" class="textbox" placeholder="Codigo Producto" required="" autofocus=""></span>
						</div>
        				    	<div>
                                                    <span><input type="text" name="cantidad" class="textbox" placeholder="Cantidad Producto" required=""></span>
						</div>
                                                <div>
                                                    <span><input type="text" name="nombre" class="textbox" placeholder="Nombre Producto" required=""></span>
						</div>
                                                <div>
                                                    <span><input type="text" name="valor" class="textbox" placeholder="Valor Producto" required=""></span>
						</div>
                                                <div>
                                                    <span><input type="submit" value="Guardar"></span>
						</div>
					    </form>
                                        </div>
                                    </div>
                                    
                                    <div class="col_1_of_3 contact_1_of_3">
					<div class="company_address">
				     	<h3>Productos</h3>
                                        <table>
                                            <tr>
                                                <td><p>Codigo&nbsp;</p></td>
                                                <td><p>Cantidad&nbsp;</p></td>
                                                <td><p>Nombre&nbsp;</p></td>
                                                <td><p>Valor&nbsp;</p></td>
                                            </tr>
                                            <c:forEach items="${Inventario}" var="inv">
                                                <tr><td >${inv.codigoI}</td><td> ${inv.cantidadI}</td><td>${inv.nombreI}</td><td>${inv.valorI}</td></tr>
                                            </c:forEach>
                                        </table>
						<!--<p>500 Lorem Ipsum Dolor Sit,</p>
						<p>22-56-2-9 Sit Amet, Lorem,</p>
						<p>USA</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>info@mycompany.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>-->
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
 </html>
