<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    CursoDAO dao = new CursoDAO();
    List<Curso> lista = dao.listar();

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
            <h4>Curso</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="curso-cadastrar.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">Cadastrar curso</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nome</th>
                        <th>Área do Curso</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <%
                    for (Curso obj : lista) {
                %>
                <tbody>
                    <tr>
                        <td><%=obj.getIdCurso()%></td>
                        <td><%=obj.getNome()%></td>
                        <td><%=obj.getCursoArea()%></td>

                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="curso-atualizar.jsp?IdCurso=<%=obj.getIdCurso()%>">Editar</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="curso-excluir-ok.jsp?IdCurso=<%=obj.getIdCurso()%>">Excluir</a></i>
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