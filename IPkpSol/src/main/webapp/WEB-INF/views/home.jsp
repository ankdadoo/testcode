<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; "%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello , This is a test Talisen Website!!!
</h1>

<P>  The time on the server is ${serverTime}. </P>

<script type="text/javascript">
function showHideAttributes(spanId){
     if(document.getElementById(spanId).style.display=='block'){
         document.getElementById(spanId).style.display='none';
     }else if(document.getElementById(spanId).style.display=='none'){
            document.getElementById(spanId).style.display='block';
           
     }
 }
</script>



<a href="#" onclick="showHideAttributes('debugSpan')"> Attributes</a>
<span id='debugSpan' style='display:none'>
Session Attributes:
<% java.util.Enumeration salist = session.getAttributeNames();
   while(salist.hasMoreElements()){
       String name=(String)salist.nextElement();
       Object value = session.getAttribute(name);%>      
      <%=" "+name+"="+value %>
<% }%>
Request Attributes:

<% java.util.Enumeration ralist = request.getAttributeNames();
   while(ralist.hasMoreElements()){
       String name=(String)ralist.nextElement();
       Object value = request.getAttribute(name);%>      
      <%=" "+name+"="+value %>
<% }%>



Request Parameters:

<% java.util.Enumeration palist = request.getParameterNames();
   while(palist.hasMoreElements()){
       String name=(String)palist.nextElement();
       Object value = request.getParameter(name);%>      
      <%=" "+name+"="+value %>
<% }%>



Request Headers:

<% java.util.Enumeration halist = request.getHeaderNames();
   while(halist.hasMoreElements()){
       String name=(String)halist.nextElement();
       Object value = request.getHeader(name);%>      
      <%=" "+name+"="+value %>
<% }%>
</span>
</body>
</html>
