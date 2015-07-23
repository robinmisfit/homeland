<%@ page language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>  
<%@ taglib prefix="tilesx" uri="http://tiles.apache.org/tags-tiles-extras" %>
<!DOCTYPE HTML>
<html>
<% 
	String urlRoot = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() + request.getContextPath()+"/"; 
%>
  <head>
  	  <base href="<%=urlRoot%>"/>
 	  <link rel= "Shortcut Icon" href= "image/favicon.ico" type="image/x-icon" >
  	  <link rel=stylesheet href="css/base.css">
  	  <link rel=stylesheet href="css/site/homesite.css">
      <title><tiles:insertAttribute name="title" /></title>
  </head>
  <body>
  <div class="home_top">
  		<tiles:insertAttribute name="header" />
   </div>
   <div class="side">
   		<tiles:insertAttribute name="side" />
   </div> 	
   <div class="body">
   		<tiles:insertAttribute name="body" />
   </div>
   <div class="footer">
   		<tiles:insertAttribute name="footer" />
   </div> 	
   <script type="text/javascript" src="js/lib/jquery-2.0.3.js"></script>
  <script type="text/javascript" src="js/home_header.js"></script>
 </body>
  <script type="text/javascript">
  	$(document).ready(function(){
  		$('.header_server a').addClass('high_tab');
  		$('#login_info>a').on('click',openPersonalSettings)
  	});
  	
  </script>
</html>