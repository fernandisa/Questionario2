<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    if(request.getParameter("idCurso") == null )
    {
      response.sendRedirect("curso.jsp"); 
      //para a execução aqui
      return;
    }
    
    Long idCurso = Long.parseLong(request.getParameter("idCurso"));
    CursoDAO dao = new CursoDAO();
    Curso obj = dao.buscarPorChavePrimaria(idCurso);
    
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
<h1 class="centro">Exclusão de Cursos</h1>
            
         <div>
             <%=msg%>.<br />
             <a href="curso.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
