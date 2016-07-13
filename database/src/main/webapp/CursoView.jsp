<!DOCTYPE html>
<%@page import="jpa.Curso"%>
<%@page import="java.util.List"%>
<html>

<head>
<title>Curso</title>
</head>

<body>
  <h1>
    <a href="curso">Curso</a>
  </h1>
  <a href="logout">Logout</a>
  <br>
  <br>
  <form>
    <table>
      <tr>
        <td>C�digo</td>
        <td><input name="codigo"></td>
      </tr>
      <tr>
        <td>Nome:</td>
        <td><input name="nome"></td>
      </tr>
    </table>
    <button name="operacao" value="incluir">Incluir</button>
    <button name="operacao" value="excluir">Excluir</button>
    <button name="operacao" value="alterar">Alterar</button>
  </form>
  <b>${msg}</b>
  <hr>
  Usu�rio: ${usuario}
  <hr>
  <table>
    <tr>
      <th>C�digo</th>
      <th>Nome</th>
      <th>A��es</th>
    </tr>
    <%
      //Obt�m a lista de cursos criada pelo controlador.
  	List<Curso> cursos =
      (List<Curso>) request.getAttribute("cursos");

    if (cursos != null && !cursos.isEmpty()) {
      for (Curso c : cursos) {
    %>
    <tr>
      <td><%=c.getCodigo()%></td>
      <td><%=c.getNome()%></td>
      <td><a href="curso?operacao=excluir&codigo=<%=c.getCodigo()%>">Excluir</a></td>
    </tr>
    <%
      }
    }
    %>
  </table>
</body>

</html>