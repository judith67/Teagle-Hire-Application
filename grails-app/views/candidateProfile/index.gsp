<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'candidateProfile.label', default: 'CandidateProfile')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
        </head>
    <body>
        <a href="#list-candidateProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <!--Navigation-->

        <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <asset:image id="brand" src="teagleLogo.svg" />
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><asset:image id="profile" src="profile.png" /></li>
            <li>
                <p>Ravi Kumar<br><span>${new Date()}</span><p>
          </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
        <!--Navigation Ends here -->
        <div id="mySidenav" class="sidenav">
          <a href="../jobs/index">Home</a>
          <a href="../Dashboard/index">Dashboard</a>
          <a href="../employeeRef/index">Employee Referrals</a>
          <a href="../leaderDashboard/index">Leader Dashboard</a>
          <a href="../partners/index">Partners</a>
          <a href="../hiringManager/index">Hiring Manager</a>
          <a href="../sourcingTeam/index">Sourcing Team</a>
          <a href="../clientAdmin/create">Admin</a>
          <a href="#">Help</a>
        </div>
        <div id="main" style="left: 0%;">
          <a href="javascript:void(0)" style="border-bottom: 0px;" class="closebtn" onclick="closeNav()"><asset:image src="arrowclose.svg" /></a>
          <p style="font-size:30px;cursor:pointer;" id="open" onclick="openNav()"><asset:image src="arrow.svg" /></p>
        </div>
        <div id="graphbar">
          <ul>
            <li><asset:image src="performance.jpg" style="margin-top:-10%; width: 100%;" id="performance"/></li>
            <li><asset:image src="funnel.svg" id="funnel"/></li>
            <li><asset:image src="donut.svg" id="funnel"/></li>
            <li>
              <div id="actions">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, porro.</p>
              </div>
              <div id="actions">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, porro.</p>
              </div>
            </li>
            <li></li>
          </ul>
        </div>
        <p id="title">Candidate Profile</p>
        <div class="row jdviewrow">
          <h3 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></h3>
        </div>

        <div class="row jdreview">

          <div class="col-lg-12 jdreviewcol">
            <div class="row">
                <ul class="col-lg-6 col-md-7 col-sm-12 col-xs-12" id="reviewid">
                  <li>#0001:</li>
                  <li style="width:18%; font-size:11px; font-weight: bold;">Sahil Shetty</li>
                  <li><span id="totscore">78%</span></li>
                  <li><a href="#" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></li>
                  <li><a href="#" data-toggle="tooltip" title="Share Candidate Details"><i class="fa fa-share-alt"></i></a></li>
                  <li><a href="#" data-toggle="tooltip" title="Resume attach"><i class="fa fa-paperclip"></i></a></li>
                </ul>
                <ul class="col-lg-6 col-md-5 col-sm-6 col-xs-12 text-right" id="secondlist">
                  <li style="margin-right: 0%;">Updated: 14 days</li>
                  <li>Status</li>
                    <li># Jobs</li>
                    <li>Add to Jobs</li>
                    <li>Reject</li>
                    <li>Re-Upload</li>
                    <li>Update</li>
                </ul>

            </div>
          <div class="row">
          <ul class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <li>Exp: 3 yrs (2 months) | CTC: Rs. 24L</li>
            <li>Current Designations</li>
            <li>Current Company</li>
            <li>May 2014 - Dec - 2017(3yrs 8months)</li>
            <li>Education</li>
            <li>Industry</li>
          </ul>
          <ul class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <li>Current Location</li>
            <li>Pref. Location</li>
            <li>Phone</li>
            <li>Email</li>
            <li><a href="https://www.linkedin.com/company/13606351/" data-toggle="tooltip" title="Linkedin" target="_blank"><i class="fa fa-linkedin"></i></a></li>
            <li>Source</li>
          </ul>
          <ul class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <li>
              <div class="panel panel-default matchnotes">
                <div class="panel-heading">History & Match notes</div>
                <div class="panel-body">
                  <div id="history">
                    <p>Interview Date: 23-01-2018 | Job Desc.: #0001 - Java Developer | Status: On hold</p>
                  </div>
                </div>
              </div>
              <div class="input-group">
                <input type="text" class="form-control" placeholder="">
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button">ADD</button>
                </span>
              </div>
            </li>
          </ul>
          </div>

          <ul class="row jdskills">
            <li class="col-lg-4 col-md-12 col-sm-12 col-xs-12">Primary:
              <span class="label label-danger">Java</span>
              <span class="label label-primary">.net</span>
              <span class="label label-warning">JS</span>
            </li>
            <li class="col-lg-4  col-md-12 col-sm-12 col-xs-12">Secondary:
              <span class="label label-danger">Java</span>
              <span class="label label-primary">.net</span>
              <span class="label label-warning">JS</span>
            </li>
            <li class="col-lg-4  col-md-12 col-sm-12 col-xs-12">Desired:
              <span class="label label-danger">Java</span>
              <span class="label label-primary">.net</span>
              <span class="label label-warning">JS</span>
            </li>
          </ul>
        </div>
        </div>
        <div class="row jdreview">

          <div class="col-lg-12 jdreviewcol">
            <div class="row">
                <ul class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="reviewid">
                  <li class="col-lg-6 col-md-6 col-sm-12 col-xs-12"><p>Interview Rating & Comments</p></li>
                  <li class="col-lg-6 col-md-6 col-sm-12 col-xs-12"><p>Tech 1: Name </p></li>
                </ul>
            </div>
          <div class="row cpskills">
          <ul class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
            <li><h5>Primary Skills - 50%</h5></li>
            <li>Java</li>
            <li>Spring</li>
            <li>MySQL</li>
          </ul>
          <ul class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <li><h5>Secondary Skills - 30%</h5></li>
            <li>Grails</li>
            <li>Adobe designing tools</li>
            <li>GGTS</li>
          </ul>
          <ul class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
            <li><h5>Desired Skills - 20%</h5></li>
            <li>Treasury Mgmt.</li>
            <li>Equities Speculation</li>
            <li>Mortgage</li>
          </ul>
          </div>
          <div class="row">
            <div class="col-lg-12 cpcomments">
              <g:textField name="cpcomments" value="" placeholder="Interview comments here..." />
            </div>
          </div>

          <ul class="row jdskills">
            <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">Interviewer Name:</li>
            <li class="col-lg-2  col-md-2 col-sm-6 col-xs-12">Score:</li>
            <li class="col-lg-3 col-md-3 col-sm-6 col-xs-12">Recommendation: Status</li>
            <li class="col-lg-2  col-md-2 col-sm-6 col-xs-12">21-01-2018</li>
            <li class="col-lg-2  col-md-2 col-sm-6 col-xs-12">
              <g:submitButton name="savecpcommment" value="Save" />
            </li>
          </ul>
        </div>
        </div>
        <div class="row jdreview">

          <div class="col-lg-12 jdreviewcol">
                <asset:image src="resumesample.jpg" style="margin: 5% 15%" name="resume" class="img-rounded" alt="Cinque Terre" />
        </div>
      <script>
          $(document).ready(function(){
              $('[data-toggle="tooltip"]').tooltip();
          });
      </script>
      <script>
      function openNav() {
      document.getElementById("mySidenav").style.width = "13%";
      document.getElementById("main").style.marginLeft = "13%";
      $('.jdviewrow').animate({width:'69%',left:'-1%'},200);
      $('.jdreview').animate({width:'69%',left:'-1%'},200);
      $('#analysis>li:nth-child(2)').animate({marginLeft:'1%',width:'90.5%'},200);
      $('.closebtn').css({visibility: 'visible'});
      $('#open').css({visibility: 'hidden'});
      }

      function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      document.getElementById("main").style.marginLeft= "0";
      $('.jdreview').animate({width:'83%',left:"-7%"},200);
      $('.jdviewrow').animate({width:'83%',left:"-7%"},200);
      $('#analysis>li>ul').animate({marginLeft:'0%',width:'100%'},200);
      $('#analysis>li:nth-child(2)').animate({marginLeft:'1%',width:'90.5%'},200);
      $('#open').css({visibility: 'visible'});
      $('.closebtn').css({visibility: 'hidden'});
      }
      </script>
    </body>
</html>
