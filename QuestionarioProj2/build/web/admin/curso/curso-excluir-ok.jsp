<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    if (request.getParameter("idCurso") == null) {
        response.sendRedirect("curso.jsp");
        //para a execução aqui
        return;
    }

    Long idCurso = Long.parseLong(request.getParameter("idCurso"));
    CursoDAO dao = new CursoDAO();
    Curso obj = dao.buscarPorChavePrimaria(idCurso);

    String msg = "";
    if (obj != null) {
        dao.excluir(obj);
        msg = "Registro excluído com sucesso";
    } else {
        msg = "Erro ao excluir o registro";
    }

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%><br />
            <a href="curso.jsp"><i class="material-icons">Voltar</i></a>
        </div>
    </div>
</section>

<%@include file="../rodape.jsp"%>
