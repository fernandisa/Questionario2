<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%
    if(request.getParameter("idDisciplina") == null )
    {
      response.sendRedirect("disciplina.jsp"); 
      //para a execu��o aqui
      return;
    }
    
     Long idDisciplina = Long.parseLong(request.getParameter("idDisciplina"));
     DisciplinaDAO dao = new DisciplinaDAO();
     Disciplina obj = dao.buscarPorChavePrimaria(idDisciplina);
     
     String msg = "";
     if(obj!=null)
     {
         dao.excluir(obj);
         msg = "Registro exclu�do com sucesso";
    }
    else
    {
        msg = "Erro ao excluir o registro"; 
    }
    
    
%>

<h1 class="centro">Exclus�o de Disciplina</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="disciplina.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>

