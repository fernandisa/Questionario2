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
    if(obj == null)
    {
        response.sendRedirect("curso.jsp");
    }
    
%>
<div>
    <h1 class="centro">Atualização de Cursos</h1>
    <form action="curso-atualizar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtIdCurso" value="<%=obj.getIdCurso()%>" /><br />
        <label>Nome:</label><input type="text" name="txtNome" value="<%=obj.getNome()%>" /><br />
        <label>Área:</label><input type="text" name="txtArea" value="<%=obj.getCursoArea()%>" /><br />
        
        <input type="reset" value="Limpar" />
        <input type="submit" value="Atualizar" />
    </form>
    
</div>