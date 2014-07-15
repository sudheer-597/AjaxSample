<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="tag" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
	  var fstr = xmlhttp.responseText;
	  var fer=fstr.split("##");
	  
	  var element = document.getElementById("myfield");
	  element.parentNode.removeChild(element);
	 
	 
	  //var myValue=iDiv.find("input[id='myfield']").val();
	  
   document.getElementById("divID").innerHTML =fer[1];
    }
}
var labels = document.getElementsByTagName('LABEL');
alert(labels.length);
if(labels.length==0){
	textToSend="changeToLabel";
	
}else{
	alert("esle");
	textToSend="changeToText";
}
xmlhttp.open("GET","http://localhost:8080/SampleAjaxPageRefresh/target.htm?textToSend="+textToSend,true);
xmlhttp.send();
}

</script>


</head>
<body>
<div id="divID">
<tag:myTag prot="false" jsvarname="myfield"></tag:myTag>
</div>
<input type="text" id="myID" name="myName" onchange="javascript:loadXMLDoc();" />
</body>
</html>