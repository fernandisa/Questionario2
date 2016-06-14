<%@page import="modelo.MoniAval"%>
<%@page import="java.util.List"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    MoniAvalDAO dao = new MoniAvalDAO();
    List<MoniAval> lista = dao.listar();

    if (request.getParameter("txtFiltro") != null && request.getParameter("txtFiltro") != "") {
        String txtFiltro = request.getParameter("txtFiltro");
        lista = dao.listar(txtFiltro);
    } else {
        lista = dao.listar();
    }
%>
<!-- gambiarra pra alinhar o bot�o a esquerda-->
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
            <h4>Avalia��o de Monitores</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="moniaval-cadastrar.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">Cadastar</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>Codigo da avalia��o do monitor</th>
                        <th>C�digo do monitor</th>
                        <th>C�digo do question�rio</th>
                        <th>Per�odo do monitor</th>
                        <th>Resposta 1</th>
                        <th>Resposta 2</th>            
                        <th>Resposta 3</th>       
                        <th>Resposta 4</th>
                        <th>Resposta 5</th>
                        <th>Resposta 6</th>
                        <th>Resposta 7</th>
                        <th>Resposta 8</th>
                        <th>Resposta 9</th>
                        <th>Resposta 10</th>
                        <th>A��es</th>
                    </tr>
                    <%
                        for (MoniAval obj : lista) {
                    %>
                <tbody>
                    <tr>
                        <td><%=obj.getIdMoniaval()%></td>
                        <td><%=obj.getIdMonitor()%></td>
                        <td><%=obj.getIdQuestionario()%></td>
                        <td><%=obj.getMaPeriodo()%></td>
                        <td><%=obj.getMaResposta1()%></td>
                        <td><%=obj.getMaResposta2()%></td>
                        <td><%=obj.getMaResposta3()%></td>
                        <td><%=obj.getMaResposta4()%></td>
                        <td><%=obj.getMaResposta5()%></td>
                        <td><%=obj.getMaResposta6()%></td>
                        <td><%=obj.getMaResposta7()%></td>
                        <td><%=obj.getMaResposta8()%></td>
                        <td><%=obj.getMaResposta9()%></td>
                        <td><%=obj.getMaResposta10()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="moniaval-atualizar.jsp?codigo=<%=obj.getIdMoniaval()%>">Editar</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="moniaval-excluir-ok.jsp?codigo=<%=obj.getIdMoniaval()%>">Excluir</a></i>
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