<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="main.css" type="text/css" />
</head>
<body>
	<div class="survey">
	<h1>Downloads</h1>

	<h2>${product.description}</h2>

	<table>
		<tr>
			<th>Song title</th>
			<th>Audio Format</th>
		</tr>
		<tr>
			<td>64 Corvair</td>
			<td><a
				href="/EX7.2_21110789//musicStore/sound/${product.code}/corvair.mp3">MP3</a></td>
		</tr>
		<tr>
			<td>Whiskey Before Breakfast</td>
			<td><a
				href="/EX7.2_21110789//musicStore/sound/${product.code}/whiskey.mp3">MP3</a></td>
		</tr>
	</table>

	<p>
		<a href="?action=viewAlbums">View list of albums</a>
	</p>

	<p>
		<a href="?action=viewCookies">View all cookies</a>
	</p>
	</div>
</body>
</html>