<%@include file="UserHeader.jsp"%>
<%@include file="Dashboard1.jsp"%>




    <script language="javascript">AC_FL_RunContent = 0;</script>
    <script src="AC_RunActiveContent.js" language="javascript"></script>	
    <!-- Framework CSS -->
	<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen, projection">
	<link rel="stylesheet" href="css/wowza.css" type="text/css" />
</head>
<body>
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
    <div class="container">
		<!-- HEADER -->
        <div class="span-18">
            <h1>Video Chat</h1><h2>Video Chat </h2>
            	<h2><a href="/LiveEventStreaming/Disconnect">Disconnect</a></h2>
        </div>
	
        <hr class="heading">
		<!-- END HEADER -->
		<!-- EXAMPLE PLAYER: WIDTH of this player should be 636, height will vary depending on the example-->
        <div class="span-16">
			<script language="javascript">
                if (AC_FL_RunContent == 0) {
                    alert("This page requires AC_RunActiveContent.js.");
                } else {
                    AC_FL_RunContent(
                                     'codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0',
                                     'width', '636',
                                     'height', '360',
                                     'src', 'videochat',
                                     'quality', 'high',
                                     'pluginspage', 'http://www.macromedia.com/go/getflashplayer',
                                     'align', 'middle',
                                     'play', 'true',
                                     'loop', 'true',
                                     'scale', 'showall',
                                     'wmode', 'window',
                                     'devicefont', 'false',
                                     'id', 'videochat',
                                     'bgcolor', '#ffffff',
                                     'name', 'videochat',
                                     'menu', 'true',
                                     'allowFullScreen', 'true',
                                     'allowScriptAccess','sameDomain',
                                     'movie', 'videochat',
                                     'salign', ''
                                     ); //end AC code
                }
                </script>
            <noscript>
                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="636" height="360" id="videochat" align="middle">
                    <param name="allowScriptAccess" value="sameDomain" />
                    <param name="allowFullScreen" value="true" />
                    <param name="movie" value="videochat.swf" /><param name="quality" value="high" /><param name="bgcolor" value="#ffffff" />	<embed src="videochat.swf" quality="high" bgcolor="#ffffff" width="636" height="360" name="videochat" align="middle" allowScriptAccess="sameDomain" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
                </object>
            </noscript>
		</div>

	</div>
	</div>
</body>
