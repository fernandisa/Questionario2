<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    if (request.getParameter("IdQuestionario") == null) {
        response.sendRedirect("questionario.jsp");
        //para a execução aqui
        return;
    }

    Long idQuestionario = Long.parseLong(request.getParameter("IdQuestionario"));
    QuestionarioDAO dao = new QuestionarioDAO();
    Questionario obj = dao.buscarPorChavePrimaria(idQuestionario);

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
            <a href="questionario.jsp"><i class="material-icons">Voltar</i></a>
        </div>
    </div>
</section>

<%@include file="../rodape.jsp"%>

