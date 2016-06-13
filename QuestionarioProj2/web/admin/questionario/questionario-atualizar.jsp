<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%
    if(request.getParameter("idQuestionario") == null )
    {
      response.sendRedirect("questionario.jsp"); 
      //para a execução aqui
      return;
    }
    
    Long idQuestionario = Long.parseLong(request.getParameter("idQuestionario"));
    QuestionarioDAO dao = new QuestionarioDAO();
    Questionario obj = dao.buscarPorChavePrimaria(idQuestionario);
    if(obj == null)
    {
        response.sendRedirect("questionario.jsp");
    }
    
%>
<div>
    <h1 class="centro">Atualização de Questionários</h1>
    <form action="questionario-atualizar-ok.jsp" method="post">
        <label>Código:</label><input type="text" name="txtIdQuestionario" value="<%=obj.getIdQuestionario()%>" /><br />
        <label>Período:</label><input type="text" name="txtQuestPeriodo" value="<%=obj.getQuestPeriodo()%>" /><br />
        <label>Pergunta1:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta1()%>" /><br />
        <label>Pergunta2:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta2()%>" /><br />
        <label>Pergunta3:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta3()%>" /><br />
        <label>Pergunta4:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta4()%>" /><br />
        <label>Pergunta5:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta5()%>" /><br />
        <label>Pergunta6:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta6()%>" /><br />
        <label>Pergunta7:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta7()%>" /><br />
        <label>Pergunta8:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta8()%>" /><br />
        <label>Pergunta9:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta9()%>" /><br />
        <label>Pergunta10:</label><input type="text" name="txtPergunta1" value="<%=obj.getPergunta10()%>" /><br />
        
        <input type="reset" value="Limpar" />
        <input type="submit" value="Atualizar" />
    </form>
    
</div>