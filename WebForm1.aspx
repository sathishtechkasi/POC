<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BindData.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   </head>
   <body>
      <form id="form1" runat="server">
         <div>
            <input type="button" id="fileButton" value="Bind Data" />
         </div>
         <div>
            <input type="text" runat="server" class="form-control" id="txtTitle" clientidmode="Static" />
         </div>
      </form>
   </body>
   <script>
      $(document).ready(function () {           
          $('#fileButton').on('click', function () {                  
              var URL = window.location.href;
                  $.ajax({
                      headers: {
                          'Accept': 'application/json',
                          'Content-Type': 'application/json'
                      },
                      url: URL,
                      type: "POST",
                      dataType: 'text',
                      async: false,
                      contentType: "application/json; charset=utf-8;",
                      data: '{}',               
                      success: function (data, textStatus, xhr) {
                          console.log(data);
                      },
                      error: function (xhr, textStatus, errorThrown) {
                          console.log(xhr);
                      }
                  });                  
          });
      }); 
   </script>
</html>