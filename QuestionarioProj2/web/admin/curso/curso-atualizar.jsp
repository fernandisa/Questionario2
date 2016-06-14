<%@include file="../cabecalho.jsp"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%    if (request.getParameter("IdCurso") == null) {
        response.sendRedirect("curso.jsp");
        //para a execução aqui
        return;
    }

    Long idCurso = Long.parseLong(request.getParameter("IdCurso"));

    CursoDAO dao = new CursoDAO();
    Curso obj = dao.buscarPorChavePrimaria(idCurso);

    if (obj == null) {
        response.sendRedirect("curso.jsp");
        return;
    }

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Curso - Atualizar</h4>
            <form action="curso-atualizar-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <!--            NÃO PRECISA CADASTRAR O ID DA CATEGORIA, NÃO É NECESSÁRIO -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdCurso" value="<%=obj.getIdCurso()%>" /><br />
                        <label class="mdl-textfield__label" for="txtIdCurso">Código do Curso</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNome"  value="<%=obj.getNome()%>" /><br />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtCursoArea" value="<%=obj.getCursoArea()%>" /><br />
                        <label class="mdl-textfield__label" for="txtCursoArea">Área</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col">

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">clear</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>