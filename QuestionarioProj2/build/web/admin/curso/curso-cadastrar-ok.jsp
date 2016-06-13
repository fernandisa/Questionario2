<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    Long idCurso = Long.parseLong(request.getParameter("txtIdCurso"));
    String nome = request.getParameter("txtNome");
    String cursoArea = request.getParameter("txtCursoArea");
    
    CursoDAO dao = new CursoDAO();
    Curso obj = new Curso();
    
    obj.setCursoArea(cursoArea);
    obj.setIdCurso(idCurso);
    obj.setNome(nome);
    
    dao.incluir(obj);
%>
<h1 class="centro">Cadastro de Cursos</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="curso.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>

