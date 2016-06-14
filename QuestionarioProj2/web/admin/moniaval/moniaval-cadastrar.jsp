<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="modelo.Monitor"%>
<%@page import="java.util.List"%>
<%@page import="dao.MonitorDAO"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    
    MoniAval obj = new MoniAval();
    
    MonitorDAO mDAO = new MonitorDAO();
    List<Monitor> mList = mDAO.listar();

    QuestionarioDAO qDAO = new QuestionarioDAO();
    List<Questionario> qList = qDAO.listar();
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Avaliação de Monitores - Cadastrar</h4>
            <form action="moniaval-cadastrar-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <!--            NÃO PRECISA CADASTRAR O ID DA CATEGORIA, NÃO É NECESSÁRIO -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdMoniaval" />
                        <label class="mdl-textfield__label" for="txtIdMoniaval">ID da Avaliação do Monitor</label>
                    </div>
                </div>


                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selMonitor" name="selMonitor" value="<%=obj.getIdMonitor()%>">
                            <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                for (Monitor m : mList) {
                %>
                    <option value="<%=m.getIdMonitor()%>"><%=m%></option>
                <%
                }
                %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selQuestionario" name="selQuestionario" value="<%=obj.getIdQuestionario()%>">
                            <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                for (Questionario q : qList) {
                %>
                    <option value="<%=q.getIdQuestionario()%>"><%=q%></option>
                <%
                }
                %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaPeriodo" />
                        <label class="mdl-textfield__label" for="txtMaPeriodo">Período da Avaliação</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta1" />
                        <label class="mdl-textfield__label" for="txtMaResposta1">Resposta 1</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta2" />
                        <label class="mdl-textfield__label" for="txtMaResposta2">Resposta 2</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta3" />
                        <label class="mdl-textfield__label" for="txtMaResposta3">Resposta 3</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta4" />
                        <label class="mdl-textfield__label" for="txtMaResposta4">Resposta 4</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta5" />
                        <label class="mdl-textfield__label" for="txtMaResposta5">Resposta 5</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta6" />
                        <label class="mdl-textfield__label" for="txtMaResposta6">Resposta 6</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta7" />
                        <label class="mdl-textfield__label" for="txtMaResposta7">Resposta 7</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta8" />
                        <label class="mdl-textfield__label" for="txtMaResposta8">Resposta 8</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta9" />
                        <label class="mdl-textfield__label" for="txtMaResposta9">Resposta 9</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta10" />
                        <label class="mdl-textfield__label" for="txtMaResposta10">Resposta 10</label>
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


