package org.apache.jsp.admin.curso;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import modelo.Curso;
import dao.CursoDAO;

public final class curso_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

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
    

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div>\r\n");
      out.write("            <h1 class=\"centro\">Cursos</h1>\r\n");
      out.write("            <div>\r\n");
      out.write("                +<a href=\"curso-cadastrar.jsp\">Novo Curso</a></ br>\r\n");
      out.write("                <form>\r\n");
      out.write("                    <input type=\"text\" />\r\n");
      out.write("                    <input type=\"submit\" value=\"Pesquisar\"/><br />\r\n");
      out.write("                    <table>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <th>Id</th>\r\n");
      out.write("                            <th>Nome</th>\r\n");
      out.write("                            <th>Área do Curso</th>\r\n");
      out.write("                            <th>Ações</th>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        ");

                            for(Curso obj: lista)
                                {
                        
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td>");
      out.print(obj.getIdCurso());
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print(obj.getNome());
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print(obj.getCursoArea());
      out.write("</td>\r\n");
      out.write("                            <td><a href=\"curso-atualizar.jsp?codigo=");
      out.print(obj.getIdCurso());
      out.write("\">Editar</a>\r\n");
      out.write("                                <a href=\"curso-excluir-ok.jsp?codigo=");
      out.print(obj.getIdCurso());
      out.write("\">Excluir</a>\r\n");
      out.write("                            </td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        ");

                            }
                        
      out.write("\r\n");
      out.write("                    </table>\r\n");
      out.write("                    \r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>      \r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
