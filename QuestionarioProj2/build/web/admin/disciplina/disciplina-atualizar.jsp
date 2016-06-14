<%@page import="dao.MonitorDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@page import="modelo.Monitor"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%    if (request.getParameter("idDisciplina") == null) {
        response.sendRedirect("disciplina.jsp");
        //para a execução aqui
        return;
    }

    Long idDisciplina = Long.parseLong(request.getParameter("idDisciplina"));
    DisciplinaDAO dao = new DisciplinaDAO();
    Disciplina obj = dao.buscarPorChavePrimaria(idDisciplina);

    if (obj == null) {
        response.sendRedirect("disciplina.jsp");
        return;
    }

    //Listagem de curso, professores e monitores
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cList = cDAO.listar();
    // intregrar com o professorDAO q ainda n foi criado
    ProfessorDAO pDAO = new ProfessorDAO();
    List<Professor> pList = pDAO.listar();

    // intregrar com o monitorDAO q ainda n foi criado
    MonitorDAO mDAO = new MonitorDAO();
    List<Monitor> mList = mDAO.listar();


%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Disciplina - Cadastrar</h4>
            <form action="disciplina-atualizar-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtidDisciplina" value="<%=obj.getIdDisciplina()%>"  readonly/><br />
                        <label class="mdl-textfield__label" for="txtidDisciplina">Código</label>
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
                        <select class="mdl-select__input" id="selcurso" name="selcurso" value="">
                            <option value="">Selecione</option>
                <%                            //percorrer minha lista de cursos
                String selected = "";    
                for (Curso c : cList) {
                     if(c.getIdCurso()== obj.getIdCurso().getIdCurso())
                     {
                         selected = "selected";
                     }
                %>
                <option value="<%=c.getIdCurso()%>" <%=selected%>><%=c%></option>
                <%
                    selected = "";
                    }
                %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selprofessor" name="selprofessor" value="">
                            <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                selected = "";
                for (Professor p : pList) {
                    if(p.getIdProfessor()== obj.getIdProfessor().getIdProfessor())
                     {
                         selected = "selected";
                     }
                %>
                    <option value="<%=p.getIdProfessor()%>" <%=selected%>><%=p%></option>
                <%
                selected = "";
                }
                %>
                        </select>
                    </div>
                </div>

                <div class="mdl-cell--12-col">
                    <div class="mdl-select mdl-js-select mdl-select--floating-label">
                        <select class="mdl-select__input" id="selmonitor" name="selmonitor" value="">
                            <option value="">Selecione</option>
                <%
                //percorrer minha lista de profs
                selected = "";
                for (Monitor m : mList) {
                    if(m.getIdMonitor()== obj.getIdMonitor().getIdMonitor())
                     {
                         selected = "selected";
                     }
                %>
                    <option value="<%=m.getIdMonitor()%>" <%=selected%>><%=m%></option>
                <%
                selected = "";
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


