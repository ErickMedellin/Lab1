<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>
    <h1>Lista de videos</h1>
    Hay <%: ((System.Data.DataTable)ViewData["datavideo"]).Rows.Count %> videos
    <hr />
    <%
        foreach (System.Data.DataRow video in ((System.Data.DataTable)ViewData["datavideo"]).Rows)
        { %>
               <p> <%: video["titulo"].ToString() %> </p>
    <form action="/Video/Create" method="post">
    <fieldset>
    <legend>Informacion</legend>

    <label for="idVideo">IdVideo:</label>
        <input type="text" name="idVideo" />
        <br />

        <label for="titulo">Titulo:</label>
        <input type="text" name="titulo" />
        <br />

        <label for="repro">Reproducciones:</label>
        <input type="text" name="repro" />
        <br />

        <label for="url">Url:</label>
        <input type="text" name="url" />
        <br />
        <input type="submit" name="registrarVideo" value="Registar video " />
      </fieldset>
      </form>

               <iframe width="560" height="315" src="<%: video["url"].ToString() %>"
               frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope;
               picture-in-picture" allowfullscreen></iframe>
    <%        
        }
    %>
</body>
</html>