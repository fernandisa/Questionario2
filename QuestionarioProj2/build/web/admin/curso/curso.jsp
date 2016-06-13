<%@page import="java.util.List"%>
<%@page import="modelo.Curso"%>
<%@page import="dao.CursoDAO"%>
<%
    CursoDAO dao = new CursoDAO();
    List<Curso> lista = dao.listar();
    
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
            <h1 class="centro">Cursos</h1>
            <div>
                +<a href="curso-cadastrar.jsp">Novo Curso</a></ br>
                <form>
                    <input type="text" />
                    <input type="submit" value="Pesquisar"/><br />
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Nome</th>
                            <th>Área do Curso</th>
                            <th>Ações</th>
                        </tr>
                        <%
                            for(Curso obj: lista)
                                {
                        %>
                        <tr>
                            <td><%=obj.getIdCurso()%></td>
                            <td><%=obj.getNome()%></td>
                            <td><%=obj.getCursoArea()%></td>
                            <td><a href="curso-atualizar.jsp?codigo=<%=obj.getIdCurso()%>">Editar</a>
                                <a href="curso-excluir-ok.jsp?codigo=<%=obj.getIdCurso()%>">Excluir</a>
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
