<div class="topic-main-buttons float-end d-inline-block">
	<span class="loading-indicator btn float-start hidden" done="0">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	<!-- IF loggedIn -->
	<button component="topic/mark-unread" class="btn btn-sm btn-filter" title="[[topic:mark_unread]]">
		<span class="statement">Marcar como no leído</span>
		<i class="fa fa-regular fa-envelope"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"></span>
	</button>
	<!-- ENDIF loggedIn -->

	<!-- IMPORT partials/topic/sort.tpl -->

	<div class="d-inline-block">
	<!-- IMPORT partials/topic/tools.tpl -->
	</div>
	<!-- IMPORT partials/topic/reply-button.tpl -->
</div>
