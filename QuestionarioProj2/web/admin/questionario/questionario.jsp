<%@page import="modelo.Questionario"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%
    
    QuestionarioDAO dao = new QuestionarioDAO();
    List<Questionario> lista = dao.listar();
    
    if(request.getParameter("txtFiltro")!= null && request.getParameter("txtFiltro")!= "")
    {
        String txtFiltro = request.getParameter("txtFiltro");
        lista = dao.listar(txtFiltro);
    }
    else
    {
        lista = dao.listar();
    }
    
%>
<html>
    <body>
        <div>
            <h1 class="centro">Questionários</h1>
            <div>
                +<a href="questionario-cadastrar.jsp">Novo Questionário</a></ br>
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Período</th>
                            <th>Pergunta1</th>
                            <th>Pergunta2</th>
                            <th>Pergunta3</th>
                            <th>Pergunta4</th>
                            <th>Pergunta5</th>
                            <th>Pergunta6</th>
                            <th>Pergunta7</th>
                            <th>Pergunta8</th>
                            <th>Pergunta9</th>
                            <th>Pergunta10</th>
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Questionario obj: lista)
                                {
                        %>
                        <tr>
                            <td><%=obj.getIdQuestionario()%></td>
                            <td><%=obj.getQuestPeriodo()%></td>
                            <td><%=obj.getPergunta1()%></td>
                            <td><%=obj.getPergunta2()%></td>
                            <td><%=obj.getPergunta3()%></td>
                            <td><%=obj.getPergunta4()%></td>
                            <td><%=obj.getPergunta5()%></td>
                            <td><%=obj.getPergunta6()%></td>
                            <td><%=obj.getPergunta7()%></td>
                            <td><%=obj.getPergunta8()%></td>
                            <td><%=obj.getPergunta9()%></td>
                            <td><%=obj.getPergunta10()%></td>
                            
                            <td><a href="questionario-atualizar.jsp?IdQuestionario=<%=obj.getIdQuestionario()%>">Editar</a>
                                <a href="questionario-excluir-ok.jsp?IdQuestionario=<%=obj.getIdQuestionario()%>">Excluir</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                    
                </form>
            </div>
        </div>
    </body>
</html>      
