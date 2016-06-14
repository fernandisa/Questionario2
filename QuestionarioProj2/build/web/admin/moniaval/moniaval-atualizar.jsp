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
    
%>
<div>
    <h1 class="centro">Atualização de Avaliação de Monitores</h1>
    <form action="moniaval-atualizar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtID" value="<%=obj.getIdMoniaval()%>" /><br />
        <label>Código do Monitor:</label><input type="text" name="txtIdMonitor" value="<%=obj.getIdMonitor()%>" /><br />
        <label>Código do questionário:</label><input type="text" name="txtIdQuestionario" value="<%=obj.getIdQuestionario()%>" /><br />
        <label>Período:</label><input type="text" name="txtmaPeriodo" value="<%=obj.getMaPeriodo()%>" /><br />
        <label>Resposta1:</label><input type="text" name="txtMaResposta1" value="<%=obj.getMaResposta1()%>" /><br />
        <label>Resposta2:</label><input type="text" name="txtMaResposta2" value="<%=obj.getMaResposta2()%>" /><br />
        <label>Resposta3:</label><input type="text" name="txtMaResposta3" value="<%=obj.getMaResposta3()%>" /><br />
        <label>Resposta4:</label><input type="text" name="txtMaResposta4" value="<%=obj.getMaResposta4()%>" /><br />
        <label>Resposta5:</label><input type="text" name="txtMaResposta5" value="<%=obj.getMaResposta5()%>" /><br />
        <label>Resposta6:</label><input type="text" name="txtMaResposta6" value="<%=obj.getMaResposta6()%>" /><br />
        <label>Resposta7:</label><input type="text" name="txtMaResposta7" value="<%=obj.getMaResposta7()%>" /><br />
        <label>Resposta8:</label><input type="text" name="txtMaResposta8" value="<%=obj.getMaResposta8()%>" /><br />
        <label>Resposta9:</label><input type="text" name="txtMaResposta9" value="<%=obj.getMaResposta9()%>" /><br />
        <label>Resposta10:</label><input type="text" name="txtMaResposta10" value="<%=obj.getMaResposta10()%>" /><br />
        <input type="reset" value="Limpar" />
        <input type="submit" value="Atualizar" />
    </form>
    
</div>
