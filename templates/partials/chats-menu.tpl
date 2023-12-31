{{{ if config.loggedIn }}}
<ul class="nav nav-pills">
	<li class="nav-item">
		<a class="nav-link active" href="#" data-bs-target="#profile" data-bs-toggle="tab">
			{buildAvatar(user, "24px", true, "user-icon")}
			<span class="username">{user.username}</span>
		</a>
	</li>
</ul>

<div class="tab-content">
	<div class="tab-pane fade show active" id="profile">
		<section class="menu-section" data-section="profile">
			<ul class="menu-section-list dropdown-menu show text-bg-dark w-100 border-0" component="header/usercontrol"></ul>
		</section>
	</div>
	<div class="tab-pane fade" id="notifications">
		<section class="menu-section text-bg-dark" data-section="notifications">
			<ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
			<p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
		</section>
	</div>
	{{{ if !config.disableChat }}}
	<div class="tab-pane fade" id="chats">
		<section class="menu-section text-bg-dark" data-section="chats">
			<ul class="menu-section-list chat-list" component="chat/list">
				<a class="navigation-link" href="{relative_path}/user/{user.userslug}/chats">[[modules:chat.see_all]]</a>
			</ul>
		</section>
	</div>
	{{{ end }}}
</div>
{{{ end }}}