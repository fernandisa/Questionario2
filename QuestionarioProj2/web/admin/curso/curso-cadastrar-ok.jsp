<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    String msg = "";

    if (request.getParameter("txtIdCurso") == null || request.getParameter("txtNome") == null || request.getParameter("txtCursoArea") == null) {
        response.sendRedirect("curso.jsp");
    } else {
        Long idCurso = Long.parseLong(request.getParameter("txtIdCurso"));
        String nome = request.getParameter("txtNome");
        String cursoArea = request.getParameter("txtCursoArea");

        CursoDAO dao = new CursoDAO();
        Curso obj = new Curso();

        obj.setCursoArea(cursoArea);
        obj.setIdCurso(idCurso);
        obj.setNome(nome);

        try {
            dao.incluir(obj);
            msg = "Curso cadastrado com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao cadastrar curso";
        }
    }

    String idCurso = request.getParameter("txtIdCurso");
    String nome = request.getParameter("txtNome");
    String cursoArea = request.getParameter("txtCursoArea");

%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            Código do Curso: <%=idCurso%><br />
            Nome: <%=nome%><br />
            Área: <%=cursoArea%><br />
            <a href="curso.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>
