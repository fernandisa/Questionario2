<%@page import="modelo.Monitor"%>
<%@page import="modelo.Professor"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    CursoDAO cDAO = new CursoDAO();
    List<Curso> cList = cDAO.listar();
    // fazer a dao professor para pegar o método listar
    // fazer a dao monitor para pegar o método listar
    ProfessorDAO pDAO = new ProfessorDAO();
    List<Professor> pList = pDAO.listar();
    
    MonitorDAO mDAO = new MonitorDAO();
    List<Monitor> mList = mDAO.listar();
    
    
%>
<div>
    <h1 class="centro">Cadastro de Disciplinas</h1>
    <form action="disciplina-cadastrar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtIdDisciplina" /><br />
        <label>Nome:</label><input type="text" name="txtDiscNome" /><br />
        <label>Area:</label><input type="text" name="txtArea" /><br />
        <label>Curso</label>
        <select name="selcurso">
            <option value="">Selecione</option>
            <%
                //percorrer minha lista de cursos
                for (Curso c : cList) {
            %>
            <option value="<%=c.getIdCurso()%>"><%=c%></option>
            <%
                }
            %>
        </select><br />
        <label>Professor</label>
        <select name="selprofessor">
            <option value="">Selecione</option>
            <%
                //percorrer minha lista de profs
                for (Professor p : pList) { // fazer dao prof
            %>
            <option value="<%=p.getIdProfessor()%>"><%=p%></option>
            <%
                }
            %>
        </select><br />
        <label>Monitor</label>
        <select name="selmonitor">
        <option value="">Selecione</option>
        <%
            //percorrer minha lista de profs
            for (Monitor m : mList) { // fazer dao monitor
        %>
        <option value="<%=m.getIdMonitor()%>"><%=m%></option>
        <%
            }
        %>
        </select><br />
        
        <input type="reset" value="Limpar" />
        <input type="submit" value="Cadastrar" />
    </form>
    
</div>

