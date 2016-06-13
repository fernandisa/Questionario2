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
    MonitorDAO pDAO = new  MonitorDAO();
    List<Monitor> mList = mDAO.listar();
   

%>

<div>
    <h1 class="centro">Atualização de Disciplinas</h1>
    <form action="disciplina-atualizar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtIdDisciplina" value="<%=obj.getIdDisciplina()%>" /><br />
        <label>Nome:</label><input type="text" name="txtDiscNome" value="<%=obj.getDiscNome()%>" /><br />
        <label>Area:</label><input type="text" name="txtArea" value="<%=obj.getArea()%>" /><br />
        <label>Curso</label>
        <select name="selcurso">
            <option value="">Selecione</option>
            <%
                String selected = "";
                //percorrer minha lista de cursos
                for (Curso c : cList) {
                    if(c.getIdCurso()== obj.getIdCurso().getIdCurso())
                    {
                        selected = "selected";
                    }
            %>
            <option value="<%=c.getIdCurso()%>" <%=selected%> <%=c%></option>
            <%
                selected = "";
                }
            %>
        </select><br />
        <label>Professor</label>
        <select name="selprofessor">
            <option value="">Selecione</option>
            <%
                String selecte = "";
                //percorrer minha lista de profs
                for (Professor p : pList) { // fazer dao prof
                    if(p.getIdProfessor()== obj.getIdProfessor().getIdProfessor())
                    {
                        selecte = "selecte";
                    }
            %>
            <option value="<%=p.getIdProfessor()%>" <%=selecte%> <%=p%></option>
            <%
                selecte = "";
                }
            %>
        </select><br />
        <label>Monitor</label>
        <select name="selmonitor">
        <option value="">Selecione</option>
        <%
            String select = "";
            //percorrer minha lista de profs
            for (Monitor m : mList) {
                if(m.getIdMonitor()== obj.getIdMonitor().getIdMonitor())
                {
                    select = "select";
                }
        %>
        <option value="<%=m.getIdMonitor()%>" <%=select%> <%=m%> </option>
        <%
            select = "";
            }
        %>
        </select><br />
        
        <input type="reset" value="Limpar" />
        <input type="submit" value="Atualizar" />
    </form>
    
</div>


