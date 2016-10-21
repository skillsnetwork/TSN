
<%			
            session.removeAttribute("uname");
			session.invalidate();
			
            response.sendRedirect("Home.jsp");
            
      %>
   <script>
    history.forward();
</script>

