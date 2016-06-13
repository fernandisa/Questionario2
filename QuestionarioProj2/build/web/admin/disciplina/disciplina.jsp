<%@page import="java.util.List"%>
<%@page import="modelo.Disciplina"%>
<%@page import="dao.DisciplinaDAO"%>
<% 
  DisciplinaDAO dao = new DisciplinaDAO();
  List<Disciplina> lista = dao.listar();
  
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
            <h1 class="centro">Disciplinas</h1>
            <div>
                +<a href="disciplina-cadastrar.jsp">Nova Disciplina</a></ br>
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Codigo</th>
                            <th>Nome</th>
                            <th>Curso</th>
                            <th>Professor</th>
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Disciplina obj: lista)
                                {
                        %>
                        <tr>
                            <td><%=obj.getIdDisciplina()%></td>
                            <td><%=obj.getDiscNome()%></td>
                            <td><%=obj.getIdCurso()%></td>
                            <td><%=obj.getIdProfessor()%></td> <%--trocar o getId no professor e colocar o nome junto para aparecer na tela --%>
                            <td><a href="disciplina-atualizar.jsp?codigo=<%=obj.getIdDisciplina()%>">Editar</a>
                                <a href="disciplina-excluir-ok.jsp?codigo=<%=obj.getIdDisciplina()%>">Excluir</a>
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