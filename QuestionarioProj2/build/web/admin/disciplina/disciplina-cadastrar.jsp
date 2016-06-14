<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@page import="dao.MonitorDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.Professor"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    if (request.getParameter("IdDisciplina") == null)
    {
        response.sendRedirect("disciplina.jsp");
        return;
    }
    Long idDisciplina = Long.parseLong(request.getParameter("IdDisciplina"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(idDisciplina);
    
    if (obj == null)
    {
        response.sendRedirect("disciplina.jsp");
        return;

    }
    
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cList = cDAO.listar();
    // fazer a dao professor para pegar o m�todo listar
    // fazer a dao monitor para pegar o m�todo listar
    ProfessorDAO pDAO = new ProfessorDAO();
    List<Professor> pList = pDAO.listar();
    
    MonitorDAO mDAO = new MonitorDAO();
    List<Monitor> mList = mDAO.listar();
    
    
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Disciplina - Cadastrar</h4>
            <form action="disciplina-cadastrar-ok.jsp" method="post">
                <!-- 
                    primeira div -- �rea que ocupar� o campo de formul�rio
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdDisciplina" />
                        <label class="mdl-textfield__label" for="txtIdDisciplina">C�digo</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtDiscNome" />
                        <label class="mdl-textfield__label" for="txtDiscNome">Nome</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtArea" />
                        <label class="mdl-textfield__label" for="txtArea">�rea</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selcurso" name="selcurso" value="<%=obj.getIdCurso()%>">
                        <option value="">Selecione a resposta</option>
                            <%                         
                               String selected = "";    
                               for (Curso item : cList) {
                               if(item.getNome()== obj.getIdCurso().getNome())
                               {
                               selected = "selected";
                               }
                            %>
                        <option value="<%=item.getNome()%>" <%=selected%>><%=item%></option>
                            <%
                            selected = "";
                             }
                            %>
                        </select>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selprofessor" name="selprofessor" value="<%=obj.getIdProfessor()%>">
                        <option value="">Selecione a resposta</option>
                            <%                         
                               String selecte = "";    
                               for (Professor item : pList) {
                               if(item.getProfNome()== obj.getIdProfessor().getProfNome())
                               {
                               selecte = "selecte";
                               }
                            %>
                        <option value="<%=item.getProfNome()%>" <%=selecte%>><%=item%></option>
                            <%
                            selecte = "";
                             }
                            %>
                        </select>
                    </div>
                </div>
                        
                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selmonitor" name="selmonitor" value="<%=obj.getIdMonitor()%>">
                        <option value="">Selecione a resposta</option>
                            <%                         
                               String select = "";    
                               for (Monitor item : mList) {
                               if(item.getMonNome()== obj.getIdMonitor().getMonNome())
                               {
                               select = "select";
                               }
                            %>
                        <option value="<%=item.getMonNome()%>" <%=select%>><%=item%></option>
                            <%
                            select = "";
                             }
                            %>
                        </select>
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


