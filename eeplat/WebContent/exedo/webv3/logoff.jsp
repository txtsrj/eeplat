<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%

  request.getSession().removeAttribute("userInfo");
  if(!request.getSession().isNew()){
	  request.getSession().invalidate();
  }
  //response.sendRedirect("/wh/exedo/webv3/");
 
%>
<script>
	  window.top.location="<%=request.getContextPath()%>/exedo/webv3/"  ;
</script>