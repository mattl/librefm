{include file='header.tpl'}

<div about="{$id}" typeof="mo:Record" class="haudio">

	<h2>
		<span rel="foaf:maker" rev="foaf:made" class="contributor">
			<a about="{$artist->id}" typeof="mo:MusicArtist" property="foaf:name" class="url fn org"
				rel="foaf:page" rev="foaf:primaryTopic" href="{$artist->getURL()}">{$artist->name}</a>
			</span>
			&#8212; 
			<span class="album" property="dc:title" rel="foaf:page" rev="foaf:primaryTopic" resource="">{$name}</span>
	</h2>

	<div{if $album->image != false} rel="foaf:depiction"{/if}>
		<img {if $album->image == false} src="{$base_url}/images/qm160.png"{else} class="photo" src="{$album->image}"{/if}
			alt="{$album->name|escape:'html':'UTF-8'}" title="{$album->name|escape:'html':'UTF-8'}" width="160" />
	</div>

<ul id="tracks" rel="mo:track">
	{section name=i loop=$tracks}
	<li about="{$tracks[i]->id}" typeof="mo:Track" class="item">
		<a class="fn url" href="{$tracks[i]->getURL()}" rel="foaf:page" property="dc:title">{$tracks[i]->name}</a>
	</li>
	{/section}
</ul>

</div>

<div class="cleaner">&nbsp;</div>
{include file='footer.tpl'}