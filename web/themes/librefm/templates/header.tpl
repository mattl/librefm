<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">  
<head>
	<title>Libre.fm</title>
	<link rel="stylesheet" href="http://turtle.libre.fm/reset-fonts-grids.css" type="text/css" />
	<link rel="stylesheet" href="http://turtle.libre.fm/base.css" type="text/css" />
	<link rel="stylesheet" href="http://turtle.libre.fm/librefm.css" type="text/css" />
	<link rel="stylesheet" href="{$base_url}/themes/librefm/alpha.css" type="text/css" />
  <link rel="icon" href="favicon.ico" type="image/x-icon">
	<script type="text/javascript" src="{$base_url}/js/player.js"></script>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
         xmlns:dc="http://purl.org/dc/elements/1.1/"
         xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<license rdf:resource="http://creativecommons.org/licenses/by-sa/3.0/us/" />
</Work>
<License rdf:about="http://creativecommons.org/licenses/by-sa/3.0/us/">
</License>
</rdf:RDF>
-->
</head>
<body>
<div id="doc2" class="yui-t7">
	<div id="hd" role="navigation" class='vcard'><h1 class='fn org'><a href="{$base_url}" class='url'>Libre.fm</a></h1>
	{include file='menu.tpl'}
	</div>
   <div id="bd" role="main">
   <div id="coolio">
	{if ($logged_in)}
	<!-- put something here -->
        {else}
	{if $welcome}
	<div class="yui-g" id="banner">     
	  <a href="/request.php"><img src="http://libre.fm/i/topblock.png" alt="" /></a>
	{else}
	<div class="yui-g">     
	  <a href="/request.php"><img src="http://alpha.libre.fm/themes/librefm/images/topblocksmall.png" alt="" /></a>
	{/if}
	</div>{/if}
<div class="yui-gc">
    <div class="yui-u first" id="content">
    <div style="padding: 10px;">
