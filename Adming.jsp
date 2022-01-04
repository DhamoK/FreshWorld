<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
          crossorigin="anonymous" />
<form method="post" action="dbc.jsp">
<center>
<h1 >Enter Fruits Details </h1>
<hr>
<style>
            body{
                	background: url(download.jpg);
                	background-size: cover;
                    background-position: center;
            }
            table {
                border-collapse: collapse;
            }
            th {
                background-color:green;
                Color:white;
            }
            th, td {
                width:150px;
                text-align:center;
                border:0px solid black;
                padding:5px

            }
            .geeks {
                border-right:hidden;
            }
            .gfg {
                border-collapse:separate;
                border-spacing:0 15px;
            }
            h1 {
                color:Black;
            }
            .addfruit{
                 background:white;
                 padding:70px;
                 border-radius:4px;
                 display:inline-block;
                 height:500px;
                 }
        </style>
<div class="addfruit">
<img src="irctc2.png"  style="width:50%">
<br>
<table>
<tr>
<td>SQ_NO:</td><td><input type="number" name="sq_no" ></td></tr>
<tr>
<td>NAME:</td><td><input type="text" name="name"></td></tr>
<tr>
<td>QTY:</td><td><input type="number" name="qty" ></td></tr>
<tr>
<td>PRICE:</td><td><input type="number" name="price" ></td></tr>
<tr>

</table>
<br>
<br>
<input type="Submit" class="btn btn-secondary col-50" value="submit">
</div>

</center>
</form>

</body>
</html>