<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%
    if(request.getParameter("idQuestionario") == null )
    {
      response.sendRedirect("questionario.jsp"); 
      //para a execu��o aqui
      return;
    }
    
    Long idQuestionario = Long.parseLong(request.getParameter("idQuestionario"));
    QuestionarioDAO dao = new QuestionarioDAO();
    Questionario obj = dao.buscarPorChavePrimaria(idQuestionario);
    
    String msg = "";
    if(obj != null)
    {
        dao.excluir(obj);
        msg = "Registro exclu�do com sucesso";
    }
    else
    {
        msg = "Erro ao excluir o registro"; 
    }
    
%>
<h1 class="centro">Exclus�o de Question�rios</h1>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%><br />
            <a href="questionario.jsp"><i class="material-icons">Voltar</i></a>
        </div>
    </div>
</section>

<%@include file="../rodape.jsp"%>

