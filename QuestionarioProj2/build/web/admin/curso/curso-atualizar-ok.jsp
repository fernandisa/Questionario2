<%@page import="dao.CursoDAO"%>
<%@page import="modelo.Curso"%>
<%@include file="../cabecalho.jsp"%>
<%
    if (request.getParameter("txtIdCurso") == null || request.getParameter("txtNome") == null || request.getParameter("txtCursoArea") == null) {
        response.sendRedirect("curso.jsp");
        return;
    }
    
    Long idCurso = Long.parseLong(request.getParameter("txtIdCurso"));
    String nome = request.getParameter("txtNome");
    String cursoArea = request.getParameter("txtCursoArea");
    
    CursoDAO dao = new CursoDAO();
    Curso obj = dao.buscarPorChavePrimaria(idCurso);
    
    if (obj == null)
    {
        response.sendRedirect("curso.jsp");
        return;
    }

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
            <a href="curso.jsp"><i class="material-icons">list</i></a>    
    </div>
    </div>

</section>

<%@include file="../rodape.jsp"%>