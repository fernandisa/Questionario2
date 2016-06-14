<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    if(request.getParameter("idMoniaval") == null )
    {
      response.sendRedirect("moniaval.jsp"); 
      //para a execu��o aqui
      return;
    }
    
    Long idMoniaval = Long.parseLong(request.getParameter("idMoniaval"));
    MoniAvalDAO dao = new MoniAvalDAO();
    MoniAval obj = dao.buscarPorChavePrimaria(idMoniaval);
    
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
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%><br />
            <a href="moniaval.jsp"><i class="material-icons">Voltar</i></a>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

