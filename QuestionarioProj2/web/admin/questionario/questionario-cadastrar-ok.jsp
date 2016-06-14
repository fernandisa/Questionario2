<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    String msg = "";

    if (request.getParameter("txtIdQuestionario") == null || request.getParameter("txtQuestPeriodo") == null || request.getParameter("txtPergunta1") == null || request.getParameter("txtPergunta2") == null || request.getParameter("txtPergunta3") == null || request.getParameter("txtPergunta4") == null || request.getParameter("txtPergunta5") == null || request.getParameter("txtPergunta6") == null || request.getParameter("txtPergunta7") == null || request.getParameter("txtPergunta8") == null || request.getParameter("txtPergunta9") == null || request.getParameter("txtPergunta10") == null) {
        response.sendRedirect("questionario.jsp");
    } else {
        Long idQuestionario = Long.parseLong(request.getParameter("txtIdQuestionario"));
        String questPeriodo = request.getParameter("txtQuestPeriodo");
        String pergunta1 = request.getParameter("txtPergunta1");
        String pergunta2 = request.getParameter("txtPergunta1");
        String pergunta3 = request.getParameter("txtPergunta1");
        String pergunta4 = request.getParameter("txtPergunta1");
        String pergunta5 = request.getParameter("txtPergunta1");
        String pergunta6 = request.getParameter("txtPergunta1");
        String pergunta7 = request.getParameter("txtPergunta1");
        String pergunta8 = request.getParameter("txtPergunta1");
        String pergunta9 = request.getParameter("txtPergunta1");
        String pergunta10 = request.getParameter("txtPergunta1");

        QuestionarioDAO dao = new QuestionarioDAO();
        Questionario obj = new Questionario();

        obj.setIdQuestionario(idQuestionario);
        obj.setPergunta1(pergunta1);
        obj.setPergunta2(pergunta2);
        obj.setPergunta3(pergunta3);
        obj.setPergunta4(pergunta4);
        obj.setPergunta5(pergunta5);
        obj.setPergunta6(pergunta6);
        obj.setPergunta7(pergunta7);
        obj.setPergunta8(pergunta8);
        obj.setPergunta9(pergunta9);
        obj.setPergunta10(pergunta10);

        try {
            dao.incluir(obj);
            msg = "Cadastro de Questionário feito com sucesso";

        } catch (Exception ex) {
            msg = "Erro ao fazer cadastro de questionário";
        }

    }

    String idQuestionario = request.getParameter("txtIdQuestionario");
    String questPeriodo = request.getParameter("txtQuestPeriodo");
    String pergunta1 = request.getParameter("txtPergunta1");
    String pergunta2 = request.getParameter("txtPergunta1");
    String pergunta3 = request.getParameter("txtPergunta1");
    String pergunta4 = request.getParameter("txtPergunta1");
    String pergunta5 = request.getParameter("txtPergunta1");
    String pergunta6 = request.getParameter("txtPergunta1");
    String pergunta7 = request.getParameter("txtPergunta1");
    String pergunta8 = request.getParameter("txtPergunta1");
    String pergunta9 = request.getParameter("txtPergunta1");
    String pergunta10 = request.getParameter("txtPergunta1");


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            Código: <%=idQuestionario%><br />
            Período: <%=questPeriodo%><br />
            Pergunta1: <%=pergunta1%><br />
            Pergunta2: <%=pergunta2%><br />
            Pergunta3: <%=pergunta3%><br />
            Pergunta4: <%=pergunta4%><br />
            Pergunta5: <%=pergunta5%><br />
            Pergunta6: <%=pergunta6%><br />
            Pergunta7: <%=pergunta7%><br />
            Pergunta8: <%=pergunta8%><br />
            Pergunta9: <%=pergunta9%><br />
            Pergunta10: <%=pergunta10%><br />

            <a href="questionario.jsp"><i class="material-icons">Lista de Questionários</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

