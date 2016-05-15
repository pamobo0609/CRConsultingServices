<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Bienvenido a la aplicacion para el control de avaluos!</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			
			.page-body{
				
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
					float: right;
    				width: 300px;
    				padding: 10px;
				}
			}
		</style>
	</head>
	<body>
		<div id="page-body" role="main">
			<h1 style="color:#939598; margin-bottom:20px; margin-left:50px">Bienvenido a la aplicacion para el manejo de avaluos!</h1>
			<div style="margin-left:35px">
			<a style="color:black;border: 3px solid #0B77B8; padding:3px 3px 3px 3px;" href="/CRConsultingServices/user/">Mi perfil</a>
			<a style="color:black;border: 3px solid #0B77B8; padding:3px 3px 3px 3px;" href="/CRConsultingServices/avaluo/create">Crear avaluo</a>
			<a style="color:black;border: 3px solid #0B77B8; padding:3px 3px 3px 3px;" href="/CRConsultingServices/avaluo/">Mis avaluos</a>
			</div>
		</div>
	</body>
</html>
