<%@page import="modelo.Monitor"%>
<%@page import="modelo.Questionario"%>
<%@page import="java.math.BigInteger"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    Long idMoniaval = Long.parseLong(request.getParameter("txtIdMoniaval"));
    Long idMonitor = Long.parseLong(request.getParameter("txtIdMonitor"));
    Long idQuestionario = Long.parseLong(request.getParameter("txtIdQuestionario"));
    String maPeriodo = request.getParameter("txtMaPeriodo");
    BigInteger maResposta1 = new BigInteger(request.getParameter("txtMaResposta1"));
    BigInteger maResposta2 = new BigInteger(request.getParameter("txtMaResposta2"));
    BigInteger maResposta3 = new BigInteger(request.getParameter("txtMaResposta3"));
    BigInteger maResposta4 = new BigInteger(request.getParameter("txtMaResposta4"));
    BigInteger maResposta5 = new BigInteger(request.getParameter("txtMaResposta5"));
    BigInteger maResposta6 = new BigInteger(request.getParameter("txtMaResposta6"));
    BigInteger maResposta7 = new BigInteger(request.getParameter("txtMaResposta7"));
    BigInteger maResposta8 = new BigInteger(request.getParameter("txtMaResposta8"));
    BigInteger maResposta9 = new BigInteger(request.getParameter("txtMaResposta9"));
    BigInteger maResposta10 = new BigInteger(request.getParameter("txtMaResposta10"));
    
    
    MoniAvalDAO dao = new MoniAvalDAO();
    MoniAval obj = new MoniAval();
    
    obj.setIdMoniaval(idMoniaval);
    obj.setMaPeriodo(maPeriodo);
    obj.setMaResposta1(maResposta1);
    obj.setMaResposta2(maResposta2);
    obj.setMaResposta3(maResposta3);
    obj.setMaResposta4(maResposta4);
    obj.setMaResposta5(maResposta5);
    obj.setMaResposta6(maResposta6);
    obj.setMaResposta7(maResposta7);
    obj.setMaResposta8(maResposta8);
    obj.setMaResposta9(maResposta9);
    obj.setMaResposta10(maResposta10);
    
    
    
    Questionario objQues = new Questionario();
    objQues.setIdQuestionario(idQuestionario);
    
    Monitor objMon = new Monitor();
    objMon.setIdMonitor(idMonitor);
    
    
    
    dao.alterar(obj);
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar avaliação de monitores</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="moniaval.jsp"><i class="material-icons">Lista de avaliação de monitores</i></a>    
        </div> 
    </body>
</html>