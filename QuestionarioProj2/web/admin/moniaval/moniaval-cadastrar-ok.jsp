<%@page import="java.math.BigInteger"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    String msg = "";
    if (request.getParameter("txtIdMoniAval") == null || request.getParameter("selMonitor") == null
            || request.getParameter("txtIdQuestionario") == null || request.getParameter("txtMaPeriodo")
            == null || request.getParameter("txtMaResposta1") == null
            || request.getParameter("txtMaResposta2") == null || request.getParameter("txtMaResposta3") == null
            || request.getParameter("txtMaResposta4") == null || request.getParameter("txtMaResposta5")
            == null || request.getParameter("txtMaResposta6") == null
            || request.getParameter("txtMaResposta7") == null || request.getParameter("txtMaResposta8")
            == null || request.getParameter("txtMaResposta9") == null
            || request.getParameter("txtMaResposta10") == null) {
        response.sendRedirect("moniaval.jsp");
    } else {
        Long idMoniaval = Long.parseLong(request.getParameter("txtIdMoniaval"));
        Long idMonitor = Long.parseLong(request.getParameter("selMonitor"));
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

        try {
            dao.incluir(obj);
            msg = "Avalia��o do Monitor cadastrada com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao cadastrar avalia��o";
        }

    }
    String idMoniaval = request.getParameter("txtIdMoniAval");
    String selMonitor = request.getParameter("selMonitor");
    String selQuestionario = request.getParameter("selQuestionario");
    String maPeriodo = request.getParameter("txtMaPeriodo");
    String maResposta1 = request.getParameter("txtMaResposta1");
    String maResposta2 = request.getParameter("txtMaResposta2");
    String maResposta3 = request.getParameter("txtMaResposta3");
    String maResposta4 = request.getParameter("txtMaResposta4");
    String maResposta5 = request.getParameter("txtMaResposta5");
    String maResposta6 = request.getParameter("txtMaResposta6");
    String maResposta7 = request.getParameter("txtMaResposta7");
    String maResposta8 = request.getParameter("txtMaResposta8");
    String maResposta9 = request.getParameter("txtMaResposta9");
    String maResposta10 = request.getParameter("txtMaResposta10");
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            C�digo da avalia��o do monitor: <%=idMoniaval%><br />
            C�digo do monitor: <%=selMonitor%><br />
            C�digo do Question�rio: <%=selQuestionario%><br />
            Per�odo: <%=maPeriodo%><br />
            Resposta1: <%=maResposta1%><br />
            Resposta2: <%=maResposta2%><br />
            Resposta3: <%=maResposta3%><br />
            Resposta4: <%=maResposta4%><br />
            Resposta5: <%=maResposta5%><br />
            Resposta6: <%=maResposta6%><br />
            Resposta7: <%=maResposta7%><br />
            Resposta8: <%=maResposta8%><br />
            Resposta9: <%=maResposta9%><br />
            Resposta10: <%=maResposta10%><br />
            <a href="moniaval.jsp"><i class="material-icons">Lista de avalia��o de monitores</i></a>
        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>