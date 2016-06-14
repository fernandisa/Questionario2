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
    if (obj == null) {
        response.sendRedirect("questionario.jsp");
    }

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Questionário - Cadastrar</h4>
            <form action="questionario-cadastrar-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <!--            NÃO PRECISA CADASTRAR O ID DA CATEGORIA, NÃO É NECESSÁRIO -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdQuestionario" value="<%=obj.getIdQuestionario()%>" /><br />
                        <label class="mdl-textfield__label" for="txtIdQuestionario">Código</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtQuestPeriodo" value="<%=obj.getQuestPeriodo()%>" /><br />
                        <label class="mdl-textfield__label" for="txtQuestPeriodo">Período</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta1" value="<%=obj.getPergunta1()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta1">Pergunta 1</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta2"  value="<%=obj.getPergunta2()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta2">Pergunta 2</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta3"  value="<%=obj.getPergunta3()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta3">Pergunta 3</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta4"  value="<%=obj.getPergunta4()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta4">Pergunta 4</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta5"  value="<%=obj.getPergunta5()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta5">Pergunta 5</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta6"  value="<%=obj.getPergunta6()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta6">Pergunta 6</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta7"  value="<%=obj.getPergunta7()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta7">Pergunta 7</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta8"  value="<%=obj.getPergunta8()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta8">Pergunta 8</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta9"  value="<%=obj.getPergunta9()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta9">Pergunta 9</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtPergunta1"  value="<%=obj.getPergunta10()%>" /><br />
                        <label class="mdl-textfield__label" for="txtPergunta1">Pergunta 10</label>
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