<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%    
    String msg = "";

    
        Long idQuestionario = Long.parseLong(request.getParameter("txtIdQuestionario"));
        String questPeriodo = request.getParameter("txtQuestPeriodo");
        String pergunta1 = request.getParameter("txtPergunta1");
        String pergunta2 = request.getParameter("txtPergunta2");
        String pergunta3 = request.getParameter("txtPergunta3");
        String pergunta4 = request.getParameter("txtPergunta4");
        String pergunta5 = request.getParameter("txtPergunta5");
        String pergunta6 = request.getParameter("txtPergunta6");
        String pergunta7 = request.getParameter("txtPergunta7");
        String pergunta8 = request.getParameter("txtPergunta8");
        String pergunta9 = request.getParameter("txtPergunta9");
        String pergunta10 = request.getParameter("txtPergunta10");

        QuestionarioDAO dao = new QuestionarioDAO();
        Questionario obj = new Questionario();

        obj.setIdQuestionario(idQuestionario);
        obj.setQuestPeriodo(questPeriodo);
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

    

    String idQuestionario1 = request.getParameter("txtIdQuestionario");
    String questPeriodo1 = request.getParameter("txtQuestPeriodo");
    


%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <%=msg%>.<br />
            Código: <%=idQuestionario1%><br />
            Período: <%=questPeriodo1%><br />
<a href="questionario.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape.jsp"%>

