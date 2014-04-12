  <!DOCTYPE html>
  <html lang="en">
    <head>
      <title>xxx</title>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
     
      <link rel="shortcut icon" href="bootstrap-3.1.1-dist/assets/ico/favicon.ico">
      <link href="bootstrap-3.1.1-dist/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="bootstrap-3.1.1-dist/css/styles.css">
      <link href="bootstrap-3.1.1-dist/css/cover.css" rel="stylesheet">
  	  <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">



    </head>

    <body>
    
    <%
   String fbtoken = request.getParameter( "access_token" );
   
    // THE FACEBOOK TOKEN FOR LOGIN
    if(fbtoken!=null) { 
    	out.println(fbtoken);
    	session.setAttribute( "access_token", fbtoken );
    }
    
    // THE INSTAGRAM LOGIN PROCESS
	%>
    
    <div id="fb-root"></div>



<script type="text/javascript">
		window.fbAsyncInit = function() {
			// init the FB JS SDK
			FB.init({
				appId : '285157814975250', // App ID from the App Dashboard
				channelUrl : 'http://localhost:8080', // Channel File for x-domain communication
				status : true, // check the login status upon init
				cookie : true, // set sessions cookies to allow your server to access the session?
				xfbml : true
			// parse XFBML tags on this page?
			});

			// Additional initialization code such as adding Event Listeners goes here
			FB
					.getLoginStatus(function(response) {

						if (response.status === 'connected') {
							// connected
							console.log("connected");
							//document.getElementBydocumentId('fblogin').style.visibility = "hidden";
							var access_token = FB.getAuthResponse()['accessToken'];
							

						} else if (response.status === 'not_authorized') {
							//login();
							
							//document.getElementById('fblogout').style.visibility = "hidden";
							console.log("not authorized");
							// not_authorized
						} else {
							//login();
							//document.getElementById('fblogout').style.visibility = "hidden";
							console.log("not loged in");
							// not_logged_in
						}
					});
		};

		
	</script>


      <div class="site-wrapper">
        <div class="site-wrapper-inner">
          <div class="cover-container">
            <div class="inner cover">
              <h1>APPNAMEGOESHERE</h1>
              <h2 >login clicking one of the icons</h2>
              
              <p class="lead">
                <div class="row">   
                <div class="col-md-2"></div>          
                  <div class="col-md-2"> <a id="fblogin" onclick="login()"><i class="fa fa-facebook  fa-spin fa-5x"></i> </a> </div>
                  <div class="col-md-2"> <a href="#"><i class="fa fa-instagram fa-spin fa-5x"></i> </a> </div>
                  <div class="col-md-2"> <a href="#"><i class="fa fa-twitter   fa-5x"></i> </a> </div>
                  <div class="col-md-2"> <a href="#"><i class="fa fa-check-circle  fa-5x"></i>     </a> </div>
                  
              
              </div>
              </p>



            </div>

            <div class="mastfoot">
              <div class="inner">
                <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>,  by <a href="https://twitter.com/mdo">@mdo</a> modified by <a href="https://twitter.com/mdo">@tototingle</a>.</p>
                <p> this app was build using the 
                 <a href="http://api.echonest.com">echonest API</a>,
                  <a href="http://api.spotify.com">spotify API</a>,
                   <a href="http://api.lastfm.com">lastfm API</a>,
                    <a href="http://api.deezer.com">deezer API</a>,
                    </p>
                    <p> this app was build during the  <a href="http://musichackday.org">X MHD</a>,

              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Bootstrap core JavaScript -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
      <script src="bootstrap-3.1.1-dist/js/bootstrap.min.js"></script>
       <script src="bootstrap-3.1.1-dist/js/mycode.js"></script>

   
    </body>
  </html>
