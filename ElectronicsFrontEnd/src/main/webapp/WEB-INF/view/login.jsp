<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="resources/jquerymin.js"></script>
  <script src="resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <script>
  	function callServlet()
  	{
  		alert("Callingservlet");
  		//document.form1.action="authenticator";
  		 //document.location.href="authenticator";
  		 alert(document.getElementById("usr_name").value);
  		document.getElementById("form1").submit();
  	}
   </script>
</head>
<body>
	<div class='container'>
	<div class="jumbotron">
  		<h1>Welcome to the world of Online Shopping!!!!</h1>
  		<p>The shop is not home away.........</p>
		</div>
		
		<div class="panel panel-default">
  <div class="panel-heading text-center">Customer Login</div>
  	<div class="panel-body">
			<form class="form-horizontal"  id="form1" method="post" action="masterlogin">
				<div class="form-group form-group-lg">
					<div class="col-sm-10">
        				<input class="form-control" type="text" id="usr_name" placeholder="User Name" name="usr_name" maxlength='12'>
      				</div>
      			</div>
      			<div class="form-group form-group-lg">
      				<div class="col-sm-10">
        				<input class="form-control" type="password" id="pass" placeholder="Password" name="pwd" maxlength='12'>
      				</div>
				</div>
				<div class="form-group form-group-lg">
					<div class="col-sm-10">
					<button type="button" class="btn btn-default" onclick="callServlet()">Login</button>
					</div>
				</div>
				</form>
	</div>
		</div>
		
<!-- 		<div class='well'> -->
<!-- 			<form class="form-horizontal" action=""> -->
<!-- 				<div class="form-group form-group-lg"> -->
<!-- 					<div class="col-sm-10"> -->
<!--         				<input class="form-control" type="text" id="usr_name" placeholder="User Name"> -->
<!--       				</div> -->
<!--       			</div> -->
<!--       			<div class="form-group form-group-lg"> -->
<!--       				<div class="col-sm-10"> -->
<!--         				<input class="form-control" type="text" id="pass" placeholder="Password"> -->
<!--       				</div> -->
<!-- 				</div> -->
<!-- 				<button type="button" class="btn btn-default">Login</button> -->
<!-- 				</form> -->
<!-- 			</div> -->
		</div>
	</body>
</html>
