<!DOCTYPE html>
<html lang="{{ page.language_code }}">
    <head>
     {% include "SiteHeader" %}
     {{blog.rss_link}}
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
		<div id="wrap">
			<div class="hgroup clear">
				<h1 id="logo" class="clear">{% editable site.header %}</h1>
				<h2>{% content name="slogan" %}</h2>
			</div>
			<div id="content-wrap" class="clear">
				<div class="wide-column clear">
                    {% addbutton class="add-article" %}
                    {% if tags %}
                        <div class="tagged-list-header">
                            <div class="header-tag-icon"></div>
                            {% if tags == empty %}
                                {{ "no_posts_tagged" | lc }}
                            {% else %}
                                {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                            {% endif %}
                        </div>
                    {% endif %}
    				<ul id="blog-list">
                    {% for article in articles %}
						<li>
							<span class="date">{{article.created_at | format_date:"long"}}</span>	
							<h2><a href="{{article.url}}">{{article.title}}</a></h2>
							{{article.excerpt | strip_html | truncate : 200}} <br/><a class="more" href="{{article.url}}">{{"read_more"|lc}}</a>
						</li>
                    {% endfor %}
                </div>
			</div>
			<!-- //content-wrap -->
			{% include "Footer" %}
		</div><!-- //wrap -->
		{% include "JS" %}
	</body>
</html>