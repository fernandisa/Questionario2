<%@page import="modelo.MoniAval"%>
<%@page import="java.util.List"%>
<%@page import="dao.MoniAvalDAO"%>
<%
    MoniAvalDAO dao = new MoniAvalDAO();
    List<MoniAval> lista = dao.listar();
    
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
            <h1 class="centro">Avaliação de Monitores</h1>
            <div>
                +<a href="moniaval-cadastrar.jsp">Nova Avaliação</a></ br>
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Codigo</th>
                            <th>Código do monitor</th>
                            <th>Código do questionário</th>
                            <th>Período do monitor</th>
                            <th>Pergunta 1</th>
                            <th>Pergunta 2</th>            
                            <th>Pergunta 3</th>       
                            <th>Pergunta 4</th>
                            <th>Pergunta 5</th>
                            <th>Pergunta 6</th>
                            <th>Pergunta 7</th>
                            <th>Pergunta 8</th>
                            <th>Pergunta 9</th>
                            <th>Pergunta 10</th>
                            <th>Ações</th>
                        </tr>
                        <%
                            for(MoniAval obj: lista)
                                {
                        %>
                        <tr>
                            <td><%=obj.getIdMoniaval()%></td>
                            <td><%=obj.getIdMonitor()%></td>
                            <td><%=obj.getIdQuestionario()%></td>
                            <td><%=obj.getMaPeriodo()%></td>
                            <td><%=obj.getMaResposta1()%></td>
                            <td><%=obj.getMaResposta2()%></td>
                            <td><%=obj.getMaResposta3()%></td>
                            <td><%=obj.getMaResposta4()%></td>
                            <td><%=obj.getMaResposta5()%></td>
                            <td><%=obj.getMaResposta6()%></td>
                            <td><%=obj.getMaResposta7()%></td>
                            <td><%=obj.getMaResposta8()%></td>
                            <td><%=obj.getMaResposta9()%></td>
                            <td><%=obj.getMaResposta10()%></td>
                  
                            <td><a href="moniaval-atualizar.jsp?codigo=<%=obj.getIdMoniaval()%>">Editar</a>
                                <a href="moniaval-excluir-ok.jsp?codigo=<%=obj.getIdMoniaval()%>">Excluir</a>
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