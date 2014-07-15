<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@attribute name="prot" required="false"%>
<%@attribute name="jsvarname" required="true"%>

<%
String newValue = (String)session.getAttribute("textToSend");
System.out.println(newValue+"   in tag");
if(newValue!=null){
	
	if(newValue.equals("changeToText")){
		
		%>
<input type="text" id="${jsvarname}" value="value" />
<%
		
	}else{
		%>
<label id="${jsvarname}">this is new vale </label>
<%
		
	}
	%>
<%
}else{
	%>
	<label id="${jsvarname}">this is old value</label>
	<%
	
}
%>




