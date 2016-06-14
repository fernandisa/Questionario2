<%@page import="modelo.Monitor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%    String msg = "";

    if (request.getParameter("txtidDisciplina") == null || request.getParameter("txtDiscNome") == null || request.getParameter("selcurso") == null || request.getParameter("txtArea") == null || request.getParameter("selmonitor") == null || request.getParameter("selprofessor") == null) {
        response.sendRedirect("disciplina.jsp");
    } else {
        Long idDisciplina = Long.parseLong(request.getParameter("txtidDisciplina"));
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

        try {
            dao.incluir(obj);
            msg = "Disciplina cadastrada com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao cadastrar disciplina";
        }

    }
    String idDisciplina = request.getParameter("txtidDisciplina");
    String discNome = request.getParameter("txtDiscNome");
    String idCurso = request.getParameter("selcurso"); // Chave estrangeira
    String idprofessor = request.getParameter("selprofessor");
    String area = request.getParameter("txtArea");
    String idMonitor = request.getParameter("selmonitor");

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            Código da disciplina: <%=idDisciplina%><br />
            Código do curso: <%=idCurso%><br />
            Código do professor: <%=idprofessor%><br />
            Código do monitor: <%=idMonitor%><br />
            Nome: <%=discNome%><br />
            Área: <%=area%><br />
            <a href="disciplina.jsp"><i class="material-icons">Lista de disciplinas</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>
