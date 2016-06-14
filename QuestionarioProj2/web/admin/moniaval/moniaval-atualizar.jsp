<%@page import="modelo.Monitor"%>
<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.MonitorDAO"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    if(request.getParameter("idMoniAval") == null )
    {
      response.sendRedirect("moniaval.jsp"); 
      //para a execução aqui
      return;
    }
    
    Long idMoniaval = Long.parseLong(request.getParameter("idMoniaval"));
    MoniAvalDAO dao = new MoniAvalDAO();
    MoniAval obj = dao.buscarPorChavePrimaria(idMoniaval);
    if(obj == null)
    {
        response.sendRedirect("moniaval.jsp");
    }
    
    MonitorDAO mdao = new MonitorDAO();
    List<Monitor> mlista = mdao.listar();

    QuestionarioDAO qdao = new QuestionarioDAO();
    List<Questionario> qlista = qdao.listar();
    
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
                        <input class="mdl-textfield__input" type="text" required  name="txtIdMoniaval" value="<%=obj.getIdMoniaval()%>" readonly="readonly" /><br />
                        <label class="mdl-textfield__label" for="txtIdMoniaval">ID da Avaliação do Monitor</label>
                    </div>
                </div>


                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selMonitor" name="selMonitor" value="<%=obj.getIdMonitor()%>">
                        <option value="">Selecione a resposta</option>
                            <%                         
                               String selected = "";    
                               for (Monitor item : mlista) {
                               if(item.getMonNome()== obj.getIdMonitor().getMonNome())
                               {
                               selected = "selected";
                               }
                            %>
                        <option value="<%=item.getMonNome()%>" <%=selected%>><%=item%></option>
                            <%
                            selected = "";
                             }
                            %>
                        </select>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selQuestionario" name="selQuestionario" value="<%=obj.getIdQuestionario()%>">
                        <option value="">Selecione a resposta</option>
                            <%                         
                               String selecte = "";    
                               for (Questionario item : qlista) {
                               if(item.getIdQuestionario()== obj.getIdQuestionario().getIdQuestionario())
                               {
                               selecte = "selecte";
                               }
                            %>
                        <option value="<%=item.getIdQuestionario()%>" <%=selecte%>><%=item%></option>
                            <%
                            selecte = "";
                             }
                            %>
                        </select>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaPeriodo" value="<%=obj.getMaPeriodo()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaPeriodo">Período da Avaliação</label>
                    </div>
                </div>
       
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta1" value="<%=obj.getMaResposta1()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta1">Resposta 1</label>
                    </div>
                </div>
             
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta2" value="<%=obj.getMaResposta2()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta2">Resposta 2</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta3" value="<%=obj.getMaResposta3()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta3">Resposta 3</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta4" value="<%=obj.getMaResposta4()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta4">Resposta 4</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta5" value="<%=obj.getMaResposta5()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta5">Resposta 5</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta6" value="<%=obj.getMaResposta6()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta6">Resposta 6</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta7" value="<%=obj.getMaResposta7()%>" /><br />7" />
                        <label class="mdl-textfield__label" for="txtMaResposta7">Resposta 7</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta8" value="<%=obj.getMaResposta8()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta8">Resposta 8</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta9" value="<%=obj.getMaResposta9()%>" /><br />
                        <label class="mdl-textfield__label" for="txtMaResposta9">Resposta 9</label>
                    </div>
                </div>

                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtMaResposta10" value="<%=obj.getMaResposta10()%>" /><br />
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