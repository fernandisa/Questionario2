<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@include file="../cabecalho.jsp"%>
<%   
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
    Questionario obj = dao.buscarPorChavePrimaria(idQuestionario);


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

    dao.alterar(obj);

%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar questionário</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="questionario.jsp"><i class="material-icons">list</i></a>    
        </div> 
        </body>
        </html>