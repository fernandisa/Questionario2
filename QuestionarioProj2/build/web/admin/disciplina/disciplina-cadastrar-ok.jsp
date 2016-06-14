<%@page import="modelo.Monitor"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%    String msg = "";

   
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
        obj.setIdCurso(objCurso);
        obj.setIdMonitor(objMon);
        obj.setIdProfessor(objProf);
        
        

        try {
            dao.incluir(obj);
            msg = "Disciplina cadastrada com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao cadastrar disciplina";
        }

    
    String idDisciplina1 = request.getParameter("txtidDisciplina");
    String discNome1 = request.getParameter("txtDiscNome");
    String idCurso1 = request.getParameter("selcurso"); // Chave estrangeira
    String idprofessor1 = request.getParameter("selprofessor");
    String area1 = request.getParameter("txtArea");
    String idMonitor1 = request.getParameter("selmonitor");

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            Código da disciplina: <%=idDisciplina1%><br />
            Código do curso: <%=idCurso1%><br />
            Código do professor: <%=idprofessor1%><br />
            Código do monitor: <%=idMonitor1%><br />
            Nome: <%=discNome1%><br />
            Área: <%=area1%><br />
            <a href="disciplina.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>
