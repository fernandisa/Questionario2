<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@include file="../cabecalho.jsp"%>
<%
    Long idCurso = Long.parseLong(request.getParameter("txtIdCurso"));
    String nome = request.getParameter("txtNome");
    String cursoArea = request.getParameter("txtCursoArea");

    CursoDAO dao = new CursoDAO();
    Curso obj = new Curso();

    obj.setCursoArea(cursoArea);
    obj.setIdCurso(idCurso);
    obj.setNome(nome);

    dao.alterar(obj);
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar curso</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="curso.jsp"><i class="material-icons">Lista de cursos</i></a>    
        </div> 
        </body>
        </html>