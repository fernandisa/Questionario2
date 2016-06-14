<%@page import="modelo.MoniAval"%>
<%@page import="java.util.List"%>
<%@page import="dao.MoniAvalDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    MoniAvalDAO dao = new MoniAvalDAO();
    List<MoniAval> lista = dao.listar();

    if (request.getParameter("txtFiltro") != null && request.getParameter("txtFiltro") != "") {
        String txtFiltro = request.getParameter("txtFiltro");
        lista = dao.listar(txtFiltro);
    } else {
        lista = dao.listar();
    }
%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<style>
    .direita
    {
        text-align: right;
        padding-right: 10%;

    }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Avaliação de Monitores</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="moniaval-cadastrar.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>Codigo da avaliação do monitor</th>
                        <th>Código do monitor</th>
                        <th>Código do questionário</th>
                       
                        <th>Ações</th>
                    </tr>
                    <%
                        for (MoniAval obj : lista) {
                    %>
                <tbody>
                    <tr>
                        <td><%=obj.getIdMoniaval()%></td>
                        <td><%=obj.getIdMonitor()%></td>
                        <td><%=obj.getIdQuestionario()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="moniaval-atualizar.jsp?IdMoniaval=<%=obj.getIdMoniaval()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="moniaval-excluir-ok.jsp?IdMoniaval=<%=obj.getIdMoniaval()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                        </td>

                    </tr>
                </tbody>
                <%
                    }
                %>
            </table>

        </div>
    </div>
</section>

<%@include file="../rodape.jsp"%>