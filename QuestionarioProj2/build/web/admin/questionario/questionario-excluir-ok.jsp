<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%
    if(request.getParameter("idQuestionario") == null )
    {
      response.sendRedirect("questionario.jsp"); 
      //para a execução aqui
      return;
    }
    
    Long idQuestionario = Long.parseLong(request.getParameter("idQuestionario"));
    QuestionarioDAO dao = new QuestionarioDAO();
    Questionario obj = dao.buscarPorChavePrimaria(idQuestionario);
    
    String msg = "";
    if(obj != null)
    {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    }
    else
    {
        msg = "Erro ao excluir o registro"; 
    }
    
%>
<h1 class="centro">Exclusão de Questionários</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="questionario.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
