{include file='header.tpl'}

<div about="{$track->id|escape:'html':'UTF-8'}" typeof="mo:Track" class="haudio">

	<h2 property="dc:title" class="fn" rel="foaf:page" rev="foaf:primaryTopic" resource="">{$track->name|escape:'html':'UTF-8'}</h2>

	{if !$track->licenseurl && !$track->license}

	<div id="purchase-download">

	<h2>Purchase this album</h2>

	<ul>
	<li><a href="http://libre.fm/affliate.php?a={$track->artist_name}&m={$track->album_name}&t={$track->name}">Amazon MP3</a></li>
	<li><a href="http://libre.fm/affliate.php?{$track->artist_name}&m={$track->album_name}&t={$track->name}&x=1">eMusic</a> (<a href="http://www.anrdoezrs.net/9g117dlurlt8CDHDBBH8A9D9IEBA">Join eMusic)</a></li>
        </ul>

        </div>

	{/if}

	<hr />

	{include file='player.tpl'}
	<script type="text/javascript">
		var playlist = [{ldelim}"artist" : "{$track->artist_name}", "album" : "{$track->album_name}", "track" : "{$track->name}", "url" : "{$track->streamurl}"{rdelim}];
		{if isset($this_user)}
		playerInit(playlist, "{$this_user->getScrobbleSession()}", false);
		{else}
		playerInit(playlist, false, false);
		{/if}
	</script>

	<dl>
		<dt>{t}Artist:{/t}</dt>
		<dd rel="foaf:maker" rev="foaf:made" class="contributor vcard">
			<a about="{$artist->id|escape:'html':'UTF-8'}" typeof="mo:MusicArtist" property="foaf:name" class="url fn org"
				rel="foaf:page" rev="foaf:primaryTopic" href="{$artist->getURL()|escape:'html':'UTF-8'}">{$artist->name|escape:'html':'UTF-8'}</a>
		</dd>
		<dt>{t}Album:{/t}</dt>
		<dd rev="mo:track">
			<a about="{$album->id|escape:'html':'UTF-8'}" typeof="mo:Record" property="dc:title" class="album"
				rel="foaf:page" rev="foaf:primaryTopic" href="{$album->getURL()|escape:'html':'UTF-8'}">{$album->name|escape:'html':'UTF-8'}</a>
		</dd>
		{if $track->mbid != ""}
		<dt>MusicBrainz ID:</dt>
		<dd>
			<a rel="mo:musicbrainz" rev="foaf:primaryTopic" href="http://musicbrainz.org/track/{$track->mbid}.html"
				class="url">{$track->mbid}</a>
		</dd>
		{/if}
	</dl>

	{if $track->licenseurl && $track->license}
	<p><a rel=":license" href="{$track->licenseurl}"><img src="{$base_url}/themes/librefm/images/licenses/{$track->license}.png" /></a></p>
	{/if}

	<ul>
		{if !empty($track->duration)}<li property="mo:durationXSD" datatype="xsd:duration" content="PT{$track->duration}S">Duration: {$track->duration}</li>{/if}
		<li property="rdfs:comment">{t}Playcount:{/t} {$track->getPlayCount()}</li>
		<li property="rdfs:comment">{t}Listeners:{/t} {$track->getListenerCount()}</li>
	</ul>
  
	<h3>{t}Albums containing this track:{/t}</h3>
	<div rev="mo:track">
	{section name=i loop=$albums}
	
		<span about="{$albums[i]->id|escape:'html':'UTF-8'}" typeof="mo:Record" property="dc:title" content="{$albums[i]->name|escape:'html':'UTF-8'}">
			<a rel="foaf:page" rev="foaf:primaryTopic" href="{$albums[i]->getURL()|escape:'html':'UTF-8'}">
				<img {if $albums[i]->image == false} src="{$base_url}/themes/librefm/images/qm160.png"{else}src="{$albums[i]->image|escape:'html':'UTF-8'}" rev="foaf:depiction" resource="{$albums[i]->id|escape:'html':'UTF-8'}"{/if}
					alt="{$albums[i]->name|escape:'html':'UTF-8'}" title="{$albums[i]->name|escape:'html':'UTF-8'}" width="160" />
			</a>
		</span>
	{/section}
	</div>
  
</div>
<div class="cleaner">&nbsp;</div>
{include file='footer.tpl'}
