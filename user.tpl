{{#user}}
	<div id="user-profile" class="material-object">
		<input type="file" accept=".png, .jpg, .jpeg .jpg" id="upload-from-profile" style="display:none;">
		<div id="user-cover" {{^blocked_me}}{{#cover_exist}}onclick="viewCover({{cover_id}} , event)"{{/cover_exist}}{{/blocked_me}} style="{{^blocked_me}}{{#cover_exist}}cursor:pointer;{{/cover_exist}}{{/blocked_me}}background:url('../{{cover}}');background-repeat:no-repeat;background-position: 0% 0%;background-size:cover;">
			{{#me}}<div class="cover-upload" onclick="choosePhotoFrom(1,0)"></div>{{/me}}
		</div>
		<div class="blurred-box">
			<div class="bg-blur" style="background:url('../{{cover}}');background-repeat:no-repeat;background-position: 0% 0%;background-size:cover;"></div>
		</div>
		<div id="user-profile-options">
			<div class="user-option-object not-channel" id="img">
				<div id="user-profile-img" data-url="{{img}}" style="background:url('../{{img}}');background-repeat:no-repeat;background-position: 50% 50%;background-size:cover;">
					{{^blocked_me}}
						<div class="user-img-options {{#me}}nemp{{/me}} {{#img_exist}}nemp{{/img_exist}}">
							{{#me}}
								<div class="upload" onclick="choosePhotoFrom(0,0)"></div>
								{{#img_exist}}<div class="line"></div>{{/img_exist}}
							{{/me}}
							{{#img_exist}}<div class="view" onclick="openNews({{img_id}})"></div>{{/img_exist}}
						</div>
					{{/blocked_me}}
				</div>
				
			</div>
			<div class="user-option-object text">{{#online}}<div class="online"></div>{{/online}}{{name}}</div>
			<div class="user-option-object text">{{city}} | {{country}}</div>
			<div class="user-option-object text">{{age}} {{langs.year}} {{#verified}}| <span class="verified">{{langs.verified}}</span>{{/verified}}</div>
			{{#me}}<div class="user-option-object text"><span onclick="showForm()" class="form"></span></div>{{/me}}
		</div>
		
		<div id="user-profile-requests">
			{{^me}}
				<div class="request-object round-icon" id="remove-block" onclick="request(0,{{id}})" style="display:{{^blocked}}none{{/blocked}};"></div>
				<div class="request-object round-icon" id="add-block" onclick="request(0,{{id}})" style="display:{{#blocked}}none{{/blocked}};"></div>
				{{^blocked_me}}
					<div class="request-object round-icon" id="remove-follow" style="display:{{^follow}}none{{/follow}};" onclick="request(1,{{id}})"></div>
					<div class="request-object round-icon" id="add-follow" style="display:{{#follow}}none{{/follow}};" onclick="request(1,{{id}})"></div>
				{{/blocked_me}}
				{{^list_blocked}}
					{{#friend}}<div class="request-object round-icon" id="remove-friend" onclick="request(2,{{id}})"></div>{{/friend}}
					{{^friend}}
						{{^request}}<div class="request-object round-icon" id="add-friend" onclick="request(2,{{id}})"></div>{{/request}}
						{{#request}}<div class="request-object round-icon" id="add-request" onclick="request(2,{{id}})"></div>{{/request}}
					{{/friend}}
				{{/list_blocked}}
			{{/me}}
			{{#me}}
				<div class="request-object round-icon" id="settings" onclick="ajaxQuery('settings')"></div>
			{{/me}}
		</div>
	</div>

	{{^blocked_me}}
	
	{{#user_info}}
	<div id="user-profile-info" {{#me}}class="hide opacity"{{/me}}>
		<div class="side first">
			<div class="info-object material-object">
				<div class="header">{{langs.about}}</div>
				<div class="content">
			
					<div class="user-form">
						<div class="item">
							<div class="title">{{langs.link}}</div>
							<div class="info link"><a href="../id{{id}}/wall" target="_blank">{{user_link}}</a></div>
						</div>
						<div class="item">
							<div class="title">{{langs.rat}}</div>
							<div class="info">{{rating}}</div>
						</div>
						<div class="item">
							<div class="title">{{langs.last_visit}}</div>
							<div class="info">
								{{#real_day}}{{.}} {{langs.day}}{{/real_day}}
								{{^real_day}}
									{{#real_hour}}{{.}} {{langs.hour}}{{/real_hour}}
									{{^real_hour}}
										{{#real_min}}{{.}} {{langs.min}}{{/real_min}}
										{{^real_min}}{{langs.now}}{{/real_min}}
									{{/real_hour}}
								{{/real_day}}
							</div>
						</div>
						<div class="item">
							<div class="title">{{langs.guests}}</div>
							<div class="info">{{#vis_enabled}}{{langs.enabled}}{{/vis_enabled}}{{^vis_enabled}}{{langs.disabled}}{{/vis_enabled}}</div>
						</div>
						{{^me}}<div class="item">
							<div class="title">{{langs.mutual_friends}}</div>
							<div class="info link" onclick="viewUserFriends('mutual_friends' , {{id}})">{{mutual_friends}}</div>
						</div>{{/me}}
						<div class="item">
							<div class="title">{{langs.followers}}</div>
							<div class="info link" onclick="viewUserFriends('user_followers' , {{id}})">{{user_followers}}</div>
						</div>
					</div>
				
				</div>
			</div>
			<div class="info-object material-object">
				<div class="header">{{langs.gifts}}</div>
				<div class="content no-bord">
					{{#gifts}}
						<div class="block">
							<div class="img" style="background:url('../{{img}}');background-repeat:no-repeat;background-position: 0% 0%;background-size: contain;"></div>
						</div>
					{{/gifts}}
					{{#more_gifts}}
						<div class="block">
							<div class="more {{#more_zero_gifts}}zero{{/more_zero_gifts}}">{{.}}</div>
						</div>
					{{/more_gifts}}
				</div>
			</div>
		</div>
		<div class="side second">
			<div class="info-object material-object">
				<div class="header">{{langs.friends}}</div>
				<div class="content act">
					{{#friends}}
						<div class="block" onclick="ajaxQuery('user' , 'wall' , {{id}})">
							<a class="prevent-link not-prevented" href="../id{{id}}/wall">
								<div class="img" style="background:url('../{{img}}');background-repeat:no-repeat;background-position: 0% 0%;background-size:cover;"></div>
							</a>
						</div>
					{{/friends}}
					{{#more_friends}}
						<div class="block">
							<div class="more {{#more_zero_friends}}zero{{/more_zero_friends}}">{{.}}</div>
						</div>
					{{/more_friends}}
				</div>
			</div>
			<div class="info-object material-object">
				<div class="header">{{langs.channels}}</div>
				<div class="content act">
					{{#channels}}
						<div class="block" onclick="ajaxQuery('channel' , 'wall' , {{id}})">
							<a class="prevent-link not-prevented" href="../channel{{id}}/wall">
								<div class="img" style="background:url('../{{img}}');background-repeat:no-repeat;background-position: 0% 0%;background-size:cover;"></div>
							</a>
						</div>
					{{/channels}}
					{{#more_channels}}
						<div class="block">
							<div class="more {{#more_zero_channels}}zero{{/more_zero_channels}}">{{.}}</div>
						</div>
					{{/more_channels}}
				</div>
			</div>
		</div>
	</div>
	{{/user_info}}
	
	<div id="user-profile-controls">
		<div id="user-menu">
			<div class="menu-block" id="wall" onmouseover="menuTransition( 'wall' )" onclick="changeContent( 'wall' , 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_wall}}</div>
				<div class="block-name">{{langs.wall}}</div>
			</div>
			<div class="menu-block" id="photos" onmouseover="menuTransition( 'photos' )" onclick="changeContent( 'photos', 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_photos}}</div>
				<div class="block-name">{{langs.photos}}</div>
			</div>
			<div class="menu-block" id="friends" onmouseover="menuTransition( 'friends' )" onclick="changeContent( 'friends', 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_friends}}</div>
				<div class="block-name">{{langs.friends}}</div>
			</div>
			<div class="menu-block" id="channels" onmouseover="menuTransition( 'channels' )" onclick="changeContent( 'channels', 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_channels}}</div>
				<div class="block-name">{{langs.channels}}</div>
			</div>
			<div class="menu-block" id="videos" onmouseover="menuTransition( 'videos' )" onclick="changeContent( 'videos', 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_videos}}</div>
				<div class="block-name">{{langs.video}}</div>
			</div>
			<div class="menu-block" id="music" onmouseover="menuTransition( 'music' )" onclick="changeContent( 'music', 'user' )" onmouseout="endMenuTransition()">
				<div class="block-num">{{user_music}}</div>
				<div class="block-name">{{langs.audio}}</div>
			</div>
			<div id="scroller"><div id="pointer"></div></div>
		</div>
	</div>
	{{/blocked_me}}
	{{#blocked_me}}
		<div class="alert-object-big">{{langs.privacy}}</div>
	{{/blocked_me}}
{{/user}}