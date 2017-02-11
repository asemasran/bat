{{#panel_user}}
<div id="chat"></div>
<div id="chat-small-screen" class="round-icon" onclick="showChat()"></div>

<div id="pages">
	<div id="audioplayer">
		<div class="content">
			<div class="header">
				<div class="player"></div>
			</div>
			<div class="body" onscroll="getMoreAudios()">
				<div class="left-column column">
					<div class="search">
						<div class="form">
							<div class="icon"></div>
							<input type="text" class="input" placeholder="{{langs.search}}.." onkeyup="searchAudio( event )">
						</div>
					</div>
					<div class="playlist">
						<header></header>
						<div class="list">
							<div class="empty alert-object-small material-object">{{langs.a_player_empty}}</div>
						</div>
					</div>
				</div>
				<div class="right-column column">
					<div class="my-audios">
						<div class="userlist" onclick="openNewPlaylist( 0 )">{{langs.my_audios}}</div>
					</div>
					<div class="friends"></div>
					<div class="more-friends" onclick="fillPlayerFriends( 1 )">{{langs.load_more_fr}}</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="video-call">
			<div class="content">
				<div class="my-video">
					<video id="callMyVideo"></video>
				</div>
				<div class="actions">
					<div class="friend-video">
						<div id="callFriendVideo">
							<div class="video-loader">{{langs.loading}}..</div>
						</div>
					</div>
					<div class="buttons">
						<div class="round-icon" onclick="videoCall.off()"></div>
						<div class="round-icon sound" onclick="videoCall.mute()"></div>
						<div class="round-icon screen" onclick="videoCall.screen()"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="video-call-action">
			<div class="user">
				<div class="img"></div>
				<div class="name"></div>
			</div>
			<div class="buttons">
				<div class="round-icon" onclick="videoCall.answer()"></div>
				<div class="round-icon" onclick="videoCall.off()"></div>
			</div>
		</div>
		<div class="video-calling">
			<div class="title">Please wait.Calling..</div>
			<div class="round-icon" onclick="videoCall.off()"></div>
		</div>
	</div>
	<div id="pop-up-box">
		<div class="content"></div>
	</div>
	<div id="pop-page" class="window-object">
		<div class="shadow-object" onclick="closeNews()"></div>
		<div id="page-content"></div>
	</div>
	<div id="win-page" class="window-object">
		<div class="shadow-object"></div>
		<div id="win-table-imit">
			<div id="win-centering">
				<div id="win-content"></div>
			</div>
		</div>
	</div>
	<div id="panel-page">
		<div id="panel-content" onscroll="getNewNotifs()"></div>
	</div>
	<div id="voice-page" class="hide">
		<div class="voice-control">
			<div class="controls">
				<div class="icon" onclick="voiceControl.exit()"></div>
			</div>
			<div class="shadow simple" onclick="voiceControl.manualStart()">
				<div class="button"></div>
			</div>
			<div class="result">
				<div class="action"></div>
				<div class="loading"></div>
			</div>
		</div>
	</div>
	<div id="windows-box"></div>
	<div class="hover-box"></div>
</div>
<div id="panels">
	<div id="main-panel">
		<div id="panel-first-line" class="panel-line">
			<div id="first-line-pos">
				<div id="first-side" class="side">
					<div class="cont-obj icon" id="menu-icon" onmouseover="openSecPanel()"></div>
				</div>
				<div id="second-side" class="side">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'user' , 'wall' , {{id}} )" href="../id{{id}}/wall">
						<div class="cont-obj" id="logo-icon"></div>	
					</a>
				</div>
				<div id="middle-side" class="side">
					<div id="input-panel-search-box">
						<div class="panel-search-icon"></div>
						<input id="input-panel-search" placeholder="{{langs.search}}.." onkeydown="goToSearch( event )" autocomplete="off">
					</div>
				</div>
				<div id="right-side" class="side">
				<div class="cont-obj icon" id="sms-icon" onclick="notification( 'msg' )"></div>
                                  <div class="cont-obj icon" id="notif-icon" onclick="notification( 'notif' )"></div>
                               	<div class="cont-obj icon" id="visits-icon" onclick="notification( 'visits' )"></div>
                               <div class="cont-obj icon" id="req-icon" onclick="notification( 'requests' )"></div>
					<div class="cont-obj icon" id="music-icon" onclick="openPlayer()"></div>
					<div class="cont-obj icon" id="mic-icon" onclick="startVoiceControl()"></div>
					<div class="cont-obj icon" id="exit-icon" onclick="logOut()"></div>
					<form method="post" action="../" style="display:none;"><input type="submit" id="exit" name="log_out"></form>
					
				</div>
			</div>
		</div>
		<div id="panel-second-line" class="panel-line">
			<div class="menu-container">
				<div class="panel-object open-menu" onclick="openThirdPanel()">
					<div class="panel-object-content"></div>
				</div>
			<div class="panel-object">				
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'news' )" href="../news">
						<div class="panel-object-content">{{langs.news}}</div>
					</a>
				</div>
				<div class="panel-object">
					<div class="panel-object-content music" onclick="openPlayer()">{{langs.audioplayer}}</div>
					<div class="panel-object-content mus-button" onclick="startPlayingAudio( 0, 0 , false)"></div>
				</div>
				<div class="panel-object">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'dating' )" href="../dating">
						<div class="panel-object-content">{{langs.datings}}</div>
					</a>
				</div>
				<div class="panel-object">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'top' )" href="../top">
						<div class="panel-object-content">{{langs.top}}</div>
					</a>
				</div>
				<div class="panel-object">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'events' )" href="../events">
						<div class="panel-object-content">{{langs.events}}</div>
					</a>
				</div>
				<div class="panel-object">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'games' )" href="../games">
						<div class="panel-object-content">{{langs.games}}</div>
					</a>
				</div>
				<div class="panel-object">
					<a class="prevent-link not-prevented" onclick="ajaxQuery( 'online' )" href="../online">
						<div class="panel-object-content">{{langs.online_people}}</div>
					</a>
				</div>
			</div>
		</div>	
		<div id="panel-third-line">
			<div class="menu-container"></div>
		</div>
		<div id="secondary-cont">
			<div class="cont-obj" id="menu-icon"></div>
			<div class="cont-obj" id="logo-icon"></div>
		</div>
	</div>
	
	<div id="secondary-panel">
		<div class="secondary-panel-object">
		
			<div class="panel-obj-info" id="user">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'user' , 'wall' , {{id}} )" href="../id{{id}}/wall">
					<div class="cover-content" style="background-image:url('../{{cover}}');background-repeat:no-repeat;background-position: 50% 50%;background-size:cover;"></div>

					<div class="panel-obj-info-user">
						<div class="img-content" data-url="{{img}}" style="background-image:url('../{{img}}');background-repeat:no-repeat;background-position: 50% 50%;background-size:contain;"></div>	
						<div class="panel-obj-info-title">{{name}}</div>
					</div>
				</a>
			</div>
			
			<div class="panel-obj-info">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'news' )" href="../news">
					<div class="cell">
						<div class="panel-obj-info-icon">
							<span></span>
							</div>
						<div class="panel-obj-info-title">{{langs.news}}</div>
				</div>
			</div>
			<div class="panel-obj-info" onclick="notification( 'msg' )" id="sms-icon">
				<div class="cell">
					<div class="panel-obj-info-icon">
						<span></span>
						<span class="new"></span>
					</div>
					<div class="panel-obj-info-title">{{langs.messages}}</div>
					<div class="extra">0</div>
				</div>
			</div>
			
			<div class="panel-obj-info" onclick="notification( 'notif' )" id="notif-icon">
				<div class="cell">
					<div class="panel-obj-info-icon">
						<span></span>
						<span class="new"></span>
					</div>
					<div class="panel-obj-info-title">{{langs.notifications}}</div>
					<div class="extra">0</div>
				</div>
			</div>
			
			<div class="panel-obj-info" onclick="notification( 'requests' )" id="req-icon">
				<div class="cell">
					<div class="panel-obj-info-icon">
						<span></span>
						<span class="new"></span>
					</div>
					<div class="panel-obj-info-title">{{langs.requests}}</div>
					<div class="extra">0</div>
				</div>
			</div>
			
			<div class="panel-obj-info" onclick="notification( 'visits' )" id="visits-icon">
				<div class="cell">
					<div class="panel-obj-info-icon">
						<span></span>
						<span class="new"></span>
					</div>
					<div class="panel-obj-info-title">{{langs.visitors}}</div>
					<div class="extra">0</div>
				</div>
			</div>
			
			<div class="panel-obj-info">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'user' , 'friends' , {{id}} )" href="../id{{id}}/friends">
					<div class="cell">
						<div class="panel-obj-info-icon">
							<span></span>
						</div>
						<div class="panel-obj-info-title">{{langs.my_friends}}</div>
					</div>
				</a>
			</div>
			
			<div class="panel-obj-info">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'user' , 'photos' , {{id}} )" href="../id{{id}}/photos">
					<div class="cell">
						<div class="panel-obj-info-icon">
							<span></span>
						</div>
						<div class="panel-obj-info-title">{{langs.my_photos}}</div>
					</div>
				</a>
			</div>
			
			<div class="panel-obj-info">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'user' , 'channels' , {{id}} )" href="../id{{id}}/channels">
					<div class="cell">
						<div class="panel-obj-info-icon">
							<span></span>
						</div>
						<div class="panel-obj-info-title">{{langs.my_channels}}</div>
					</div>
				</a>
			</div>
			
			<div class="panel-obj-info">
				<a class="prevent-link not-prevented" onclick="ajaxQuery( 'settings' )" href="../settings">
					<div class="cell">
						<div class="panel-obj-info-icon">
							<span></span>
						</div>
						<div class="panel-obj-info-title">{{langs.settings}}</div>
					</div>
				</a>
			</div>
			
		</div>
	</div>
	
	<div id="tertiary-panel"></div>
</div>
{{/panel_user}}
{{#footer}}
	<div class="container">
		<div class="dot material-object"></div>
		<div class="content">
			<div class="item">
				<span>{{main_set.name}} &copy; {{date}}</span>
			</div>
			{{#lang}}
				<div class="item lang" onclick="changeLang( '{{name}}' )">{{title}}</div>
			{{/lang}}
			<a href="http://www.dmca.com/Protection/Status.aspx?ID=a16e877a-3f14-4406-9baf-b6e8210cf7bd" title="DMCA.com Protection Status" class="dmca-badge"> 
				<img style=" vertical-align: middle;" src="//images.dmca.com/Badges/dmca_protected_sml_120l.png?ID=a16e877a-3f14-4406-9baf-b6e8210cf7bd" alt="DMCA.com Protection Status">
			</a>
		</div>
	</div>
	<script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js"> </script>
{{/footer}}