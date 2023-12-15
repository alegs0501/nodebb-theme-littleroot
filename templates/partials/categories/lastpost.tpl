<div class="lastpost background-link-container" style="border-color: #004f51">
	{{{each ./posts}}}
	<!-- IF @first -->
	<div component="category/posts">
		<a class="background-link" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->"></a>
		<p>
			<a href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(posts.user, "24px", true)}</a>
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				{posts.user.username}
			</a>
		</p>
		<div class="post-content">
			<small class="timeago" title="{../timestampISO}"></small>
		</div>
	</div>
	<!-- ENDIF @first -->
	{{{end}}}

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>
