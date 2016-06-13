<%@page import="modelo.Monitor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%
    Long idDisciplina = Long.parseLong(request.getParameter("txtIdDisciplina"));
    String discNome = request.getParameter("txtDiscNome");
    Long idCurso = Long.parseLong(request.getParameter("selcurso")); // Chave estrangeira
    Long idprofessor = Long.parseLong(request.getParameter("selprofessor"));
    String area = request.getParameter("txtArea");
    Long idMonitor = Long.parseLong(request.getParameter("selmonitor"));
    
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = new Disciplina();
    
    Professor objProf = new Professor();
    objProf.setIdProfessor(idprofessor);
    
    Curso objCurso = new Curso();
    CursoDAO daoC = new CursoDAO();
    objCurso.setIdCurso(idCurso);
    
    Monitor objMon = new Monitor();
    objMon.setIdMonitor(idMonitor);
    
    obj.setArea(area);
    obj.setDiscNome(discNome);
    obj.setIdDisciplina(idDisciplina);
    
    dao.incluir(obj);
    
    
    
%>
<h1 class="centro">Cadastro de Disciplina</h1>
            
         <div>
             Registro cadastrado com sucesso.<br />
             <a href="disciplina.jsp">Voltar para Listagem</a>
         </div>
    </body>
</html>
