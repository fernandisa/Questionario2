<%@page import="modelo.Monitor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    Long idDisciplina = Long.parseLong(request.getParameter("txtidDisciplina"));
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

    dao.alterar(obj);

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar disciplina</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="disciplina.jsp"><i class="material-icons">Lista de disciplinas</i></a>    
        </div> 
        </body>
        </html>