<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    if(request.getParameter("idMoniaval") == null )
    {
      response.sendRedirect("moniaval.jsp"); 
      //para a execu��o aqui
      return;
    }
    
    Long idMoniaval = Long.parseLong(request.getParameter("idMoniaval"));
    MoniAvalDAO dao = new MoniAvalDAO();
    MoniAval obj = dao.buscarPorChavePrimaria(idMoniaval);
    
    String msg = "";
    if(obj != null)
    {
        dao.excluir(obj);
        msg = "Registro exclu�do com sucesso";
    }
    else
    {
        msg = "Erro ao excluir o registro"; 
    }
    
%>
<h1 class="centro">Exclus�o de Avalia��o de Moniores</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="moniaval.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>

