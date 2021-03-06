package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cabecalho_002dindex_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!doctype html>\r\n");
      out.write("\r\n");
      out.write("<html lang=\"pt-br\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"description\" content=\"A front-end template that helps you build fast, modern mobile web apps.\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <title>Gerenciamento de Sistemas</title>\r\n");
      out.write("    <div>\r\n");
      out.write("        <p>Admin - <a href=\"../login.jsp?sair=ok\">Sair</a></p>\r\n");
      out.write("    </div> \r\n");
      out.write("        <!-- Add to homescreen for Chrome on Android -->\r\n");
      out.write("        <meta name=\"mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("        <link rel=\"icon\" sizes=\"192x192\" href=\"images/touch/chrome-touch-icon-192x192.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Add to homescreen for Safari on iOS -->\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-title\" content=\"Material Design Lite\">\r\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-precomposed.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Tile icon for Win8 (144x144 + tile color) -->\r\n");
      out.write("        <meta name=\"msapplication-TileImage\" content=\"images/touch/ms-touch-icon-144x144-precomposed.png\">\r\n");
      out.write("        <meta name=\"msapplication-TileColor\" content=\"#3372DF\">\r\n");
      out.write("\r\n");
      out.write("        <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->\r\n");
      out.write("        <!--\r\n");
      out.write("        <link rel=\"canonical\" href=\"http://www.example.com/\">\r\n");
      out.write("        -->\r\n");
      out.write("\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\"\r\n");
      out.write("              rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/material.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/styles.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"mdl/formulario.css\">\r\n");
      out.write("       \r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("<body class=\"mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base\">\r\n");
      out.write("    <div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-header\">\r\n");
      out.write("      <header class=\"mdl-layout__header mdl-layout__header--scroll mdl-color--primary\">\r\n");
      out.write("        <div class=\"mdl-layout__header-row\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"mdl-layout--large-screen-only mdl-layout__header-row\">\r\n");
      out.write("          <h3>Área Administrativa</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"mdl-layout--large-screen-only mdl-layout__header-row\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\" mdl-js-ripple-effect mdl-color--primary-dark\">\r\n");
      out.write("          <a href=\"index.jsp\" class=\"mdl-layout__tab\">Inicial</a>\r\n");
      out.write("          <a href=\"curso/curso.jsp\" class=\"mdl-layout__tab\">Curso</a>\r\n");
      out.write("          <a href=\"disciplina/disciplina.jsp\" class=\"mdl-layout__tab\">Disciplina</a>\r\n");
      out.write("          <a href=\"professor/list.jsp\" class=\"mdl-layout__tab\">Professor</a>\r\n");
      out.write("          <a href=\"monitor/list.jsp\" class=\"mdl-layout__tab\">Monitor</a>\r\n");
      out.write("          <a href=\"questionario/questionario.jsp\" class=\"mdl-layout__tab\">Questionário</a>\r\n");
      out.write("          <a href=\"profaval/list.jsp\" class=\"mdl-layout__tab\">Avaliação do Professor</a>\r\n");
      out.write("          <a href=\"moniaval/moniaval.jsp\" class=\"mdl-layout__tab\">Avaliação do Monitor</a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </header>\r\n");
      out.write("      <main class=\"mdl-layout__content\">\r\n");
      out.write("        <div class=\"mdl-layout__tab-panel is-active\" id=\"overview\">\r\n");
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
