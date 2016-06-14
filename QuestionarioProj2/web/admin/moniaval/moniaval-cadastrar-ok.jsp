<%@page import="java.math.BigInteger"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    String msg = "";
   
        Long idMoniaval = Long.parseLong(request.getParameter("txtIdMoniaval"));
        Long idMonitor = Long.parseLong(request.getParameter("selMonitor"));
        Long idQuestionario = Long.parseLong(request.getParameter("selQuestionario"));
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
        
        Questionario objQues = new Questionario();
        objQues.setIdQuestionario(idQuestionario);

        Monitor objMon = new Monitor();
        objMon.setIdMonitor(idMonitor);
        
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
        obj.setIdMonitor(objMon);
        obj.setIdQuestionario(objQues);
        

        try {
            dao.incluir(obj);
            msg = "Avaliação do Monitor cadastrada com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao cadastrar avaliação";
        }

    
    String idMoniaval1 = request.getParameter("txtIdMoniAval");
    String selMonitor1 = request.getParameter("selMonitor");
    String selQuestionario1 = request.getParameter("selQuestionario");
    String maPeriodo1 = request.getParameter("txtMaPeriodo");
    
    
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
             <%=msg%>.<br />
            Código da avaliação do monitor: <%=idMoniaval1%><br />
            Código do monitor: <%=selMonitor1%><br />
            Código do Questionário: <%=selQuestionario1%><br />
            Período: <%=maPeriodo1%><br />
          
            <a href="moniaval.jsp"><i class="material-icons">list</i></a>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>