<!DOCTYPE html>
<html>
    <head>
     {% include "SiteHeader" %}
    </head>
	<body>
		<div id="header" class="clear">
			<div class="wrapper">
				{% include "Mainmenu" %}
				<div class="site-options">
           {% include "Search" %}
           {% include "Langmenu" %}
				</div>
			</div>
		</div>
		<!-- //header -->
        {% include "mobile-menu" %}
		<div id="wrap">
			<div class="hgroup clear">
				<h1 id="logo" class="clear">{% editable site.header %}</h1>
				<h2>{% content name="slogan" %}</h2>
			</div>
			<div id="content-wrap" class="clear">
				<div class="left-column" data-search-indexing-allowed="true">
                    {% content %}
				</div>
				<div class="right-column">
				   {% include "Submenu" %}
                   {% content name="sidebar" %}
				</div>
			</div>
			<!-- //content-wrap -->
			{% include "Footer" %}
		</div><!-- //wrap -->
		{% include "JS" %}
	</body>
</html>