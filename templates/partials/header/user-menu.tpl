<li id="user_label" class="nav-item dropdown" title="[[global:header.profile]]">
	<label for="user-control-list-check" class="" data-bs-toggle="dropdown" id="user_dropdown" role="button" component="header/avatar">
		{buildAvatar(user, "32px", true)}
		<span id="user-header-name" class="d-block d-sm-none">{user.username}</span>
	</label>
	<input type="checkbox" class="hidden" id="user-control-list-check" aria-hidden="true">
	<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu dropdown-menu-end" aria-labelledby="user_dropdown">
		{{{ if showModMenu }}}
		<li><h6 class="dropdown-header">[[pages:moderator-tools]]</h6></li>
		<li>
			<a class="dropdown-item" href="{relative_path}/flags">
				<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
			</a>
		</li>
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
			</a>
		</li>
		{{{ if registrationQueueEnabled }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/registration-queue">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:registration-queue]]</span>
			</a>
		</li>
		{{{ end }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/ip-blacklist">
				<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
			</a>
		</li>
		{{{ else }}}
		{{{ if postQueueEnabled }}}
		<li>
			<a class="dropdown-item" href="{relative_path}/post-queue">
				<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
			</a>
		</li>
		{{{ end }}}
		{{{ end }}}
		<li>
			<a class="dropdown-item" component="header/profilelink/edit" href="{user.website}">
				<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
			</a>
		</li>
		<li component="user/logout">
			<form method="post" action="{relative_path}/logout">
				<input type="hidden" name="_csrf" value="{config.csrf_token}">
				<input type="hidden" name="noscript" value="true">
				<button type="submit" class="dropdown-item">
					<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
				</button>
			</form>
		</li>
	</ul>
</li>