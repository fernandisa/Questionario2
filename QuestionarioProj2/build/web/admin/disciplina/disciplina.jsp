<%@page import="java.util.List"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%
    DisciplinaDAO dao = new DisciplinaDAO();
    List<Disciplina> lista = dao.listar();

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
            <h4>Disciplina</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="disciplina-cadastar.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">Cadastar</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nome</th>
                        <th>Curso</th>
                        <th>Professor</th>
                        <th>A��es</th>
                    </tr>
                </thead>
                <%
                    for (Disciplina obj : lista) {
                %>
                <tbody>
                    <tr>
                        <td><%=obj.getIdDisciplina()%></td>
                        <td><%=obj.getDiscNome()%></td>
                        <td><%=obj.getIdCurso()%></td>
                        <td><%=obj.getIdProfessor()%></td> <%--trocar o getId no professor e colocar o nome junto para aparecer na tela --%>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="disciplina-atualizar.jsp?codigo=<%=obj.getIdDisciplina()%>">Editar</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="disciplina-excluir-ok.jsp?codigo=<%=obj.getIdDisciplina()%>">Excluir</a></i>
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