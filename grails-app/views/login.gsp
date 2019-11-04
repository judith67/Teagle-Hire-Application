<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SignIn</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <asset:stylesheet href="responsive.css" />
  <asset:stylesheet href="styles.css" />
  <asset:javascript src="jquery.js" />
  <asset:javascript src="script.js" />
  <asset:javascript src="login.js" />
</head>
<body id="loginbody">
  <div id="loginlogo">
    <asset:image src="EagleLogo.png" />
  </div>
    <div id="context">
  <h1 class="text-left headertext">Your AI Recruiter !  <br> Matching People with Careers...</h1>
  <p id="continued">Teagle automates end to end processes from Attract, Match, Schedule, <br> Onboarding and creating an excellent candidate experience. </p>
</div>
  <section>
  <form action="http://localhost:8080/jobs/index" method="post" id="loginform">
    <input type="text" required id="email" name="email" value="" placeholder="Username"/>
    <br>
    <input type="password" required class="password" name="password" value="" placeholder="Password"/>
    <asset:image src="eye.svg" id="showHide"/>
    <br>
    <input type="checkbox" class="checkbox" checked value="Remember Me"/>
    <label for="checkbox" style="color: #fff; font-size:12px; font-family: futura;">Remember Me</label>
    <button type="submit" id="login">Login</button>
    <!-- <button id="btnreg" name="register" formaction="http://teagle.co.in/login.html">New User ?</button> -->
  </form>
  </section>
  <footer id="foot">
    <h4 style="font-family: sans-serif;">&copy; 2017, HRinzights Technologies Private Limited, All Rights are reserved.</h4>
  </footer>
</body>
</html>
