<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/new.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

	<header><!--header start-->
			<div class="header"><!--container header start-->
				<div class="newspaper">
					<img  src="img/logo-newspaper-cf.png" alt="logo: newspaper CF">
				</div>			
				<div class="fullstack">
					<a href="https://www.codefactory.wien" target="_blank" rel=”noopener” rel="nofollow">
						<img src="img/banner-1.png" alt="banner: Full Stack Web Developer">
					</a>
				</div>
			</div><!--container header end-->			
			<div class="nav">
				<nav><!--navbar start-->
					<ul>
						<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Home</a></li>
						<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Tech</a></li>
						<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Culture</a></li>
						<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Video</a></li>
					</ul>					
				</nav><!--navbar end-->
			</div>
		</header><!--header end-->

		<content>
			<div class="serri">
				<h2>befor du sie schlechten nachrichten ließt-> ein Joke!</h2>
				<?php
						require_once 'RESTful.php';
						$url = 'http://api.serri.codefactory.live/random/';
						$response = curl_get($url);
						$string = json_decode($response);				

						echo $string->joke;
						
					?>	
			</div>
			<div class="d-flex justify-content-around">
				<div class="bbc">
					<h2>RSS BCC News/technology</h2>
					<?php
						require_once 'RESTful.php';
						$url = 'http://feeds.bbci.co.uk/news/technology/rss.xml';
						$response = curl_get($url);
						$xml = simplexml_load_string($response);
						foreach ($xml->channel->item as $item) {
						echo '<p><a href="'.$item->link.'" target="_blank">'.$item->title.'</a></p>';	
						}
					?>					
				</div>
				<div class="cnn">
					<h2>RSS CNN News/technology</h2>
					<?php
						require_once 'RESTful.php';
						$url = 'http://rss.cnn.com/rss/edition_technology.rss';
						$response = curl_get($url);
						$xml = simplexml_load_string($response);
						foreach ($xml->channel->item as $item) {
						echo '<p><a href="'.$item->link.'" target="_blank">'.$item->title.'</a></p>';	
						}
					?>	
				</div>
			</div>
		</content>

		<footer><!--footer start-->
	<div class="footer">		
		<nav class="nav"><!--navbar-->
			<ul>
				<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Home</a></li>
				<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Tech</a></li>
				<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Culture</a></li>
				<li><a href="article/index.html" target="_blank" rel=”noopener” rel="nofollow">Video</a></li>
			</ul><!--navbar end-->			
		</nav>
			<div>
				<img src="img/logo-newspaper-cf.png" alt="logo: newspaper CF">
			</div>
			<div class="name">Kathrin Schey-Codefactory 2020</div>
	</div>
	</footer>
	<!--footer end-->

</body>
</html>