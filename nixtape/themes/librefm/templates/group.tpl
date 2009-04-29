{include file='header.tpl'}

<h2 property="dc:title">Group: {$fullname|escape:'html':'UTF-8'}</h2>

<div about="#usergroup" typeof="foaf:Group" property="foaf:nick" content="{$group|escape:'html':'UTF-8'}">

<div class="group vcard">
	<div class="avatar" rel="foaf:depiction">
		<img src="{$avatar|escape:'html':'UTF-8'}" alt="avatar" class="photo" width="64" height="64" />
	</div>

	{if $ismember}
		{if $isowner}
		<a class="edit" href="{$link_edit}">[edit]</a>
		{else}
		<a class="edit" href="{$link_leave}">[leave]</a>
		{/if}
	{else}
		<a class="edit" href="{$link_join}">[join]</a>
	{/if}

	<span class="fn" property="foaf:name">{$fullname|escape:'html':'UTF-8'}</span>
	(<span class="nickname" property="foaf:nick">{$group|escape:'html':'UTF-8'}</span>)
	<br />
	{if $homepage}<a class="url" rel="foaf:page" href="{$homepage|escape:'html':'UTF-8'}">{$homepage|escape:'html':'UTF-8'}</a>{/if}
	<p class="note" property="dc:abstract">{$bio|escape:'html':'UTF-8'}</p>

	<hr style="border: 1px solid transparent; clear: both;" rel="foaf:page" rev="foaf:primaryTopic" resource="" />
</div>

<ul rel="foaf:member" class="userlist">
{foreach from=$userlist item=me}

	<li>{include file='miniprofile.tpl'}</li>
	
{/foreach}
</ul>

</div>


<!-- Column break -->
</div></div><div class="yui-u" id="sidebar"><div style="padding: 10px;">

<h3>Top artists</h3>
<ul class="tagcloud" about="{$id}">
	{section name=i loop=$group_tagcloud}
	<li style="font-size:{$group_tagcloud[i].size}"><a
	href="{$group_tagcloud[i].pageurl|escape:'html':'UTF-8'}" rel="{if $group_tagcloud[i].size|substr:-5 ==
	'large'}foaf:interest {/if}tag">{$group_tagcloud[i].artist|escape:"html":"UTF-8"}</a></li>
	{/section}
</ul>

	    <!--Ad Bard advertisement snippet, begin -->

	    <script type='text/javascript'>
	     var ab_h = '4bcaab930d3bdfded68fd7be730d7db4';
     	     var ab_s = '0';
     	    </script>
   	    
            <script type='text/javascript' src='http://cdn1.adbard.net/js/ab1.js'></script>

	    <!--Ad Bard, end -->



{include file='footer.tpl'}