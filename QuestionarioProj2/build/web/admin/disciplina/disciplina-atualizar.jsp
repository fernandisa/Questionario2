<%@page import="dao.MonitorDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Monitor"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%
    if(request.getParameter("idDisciplina") == null )
    {
      response.sendRedirect("disciplina.jsp"); 
      //para a execução aqui
      return;
    }
    
    Long idDisciplina = Long.parseLong(request.getParameter("idDisciplina"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(idDisciplina);
    
    if(obj == null)
    {
        response.sendRedirect("disciplina.jsp");
        return;
    }
    
    //Listagem de curso, professores e monitores
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cList = cDAO.listar();
    // intregrar com o professorDAO q ainda n foi criado
    ProfessorDAO pDAO = new  ProfessorDAO();
    List<Professor> pList = pDAO.listar();

    // intregrar com o monitorDAO q ainda n foi criado
    MonitorDAO mDAO = new  MonitorDAO();
    List<Monitor> mList = mDAO.listar();
   

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Disciplina - Cadastrar</h4>
            <form action="disciplina-cadastrar-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtIdDisciplina" value="<%=obj.getIdDisciplina()%>" /><br />
                        <label class="mdl-textfield__label" for="txtIdDisciplina">Código</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtDiscNome" value="<%=obj.getDiscNome()%>" /><br />
                        <label class="mdl-textfield__label" for="txtDiscNome">Nome</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtArea" value="<%=obj.getArea()%>" /><br />
                        <label class="mdl-textfield__label" for="txtArea">Área</label>
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


