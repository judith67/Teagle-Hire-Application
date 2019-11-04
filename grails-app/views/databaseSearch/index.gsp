<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'databaseSearch.label', default: 'DatabaseSearch')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
        <a href="#list-profilePipeline" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
        <div id="mySidenav" class="sidenav">
            <a href="../jobs/index">Home</a>
            <a href="../Dashboard/index">Dashboard</a>
            <a href="../employeeRef/index">Employee Referrals</a>
            <a href="../leaderDashboard/index">Leader</a>
            <a href="../partners/index">Partners</a>
            <a href="../hiringManager/index">Hiring Manager</a>
            <a href="../sourcingTeam/index">Sourcing Team</a>
            <a href="../clientAdmin/create">Admin</a>
            <a href="#">Help</a>
          <a href="javascript:void(0)" style="border-bottom: 0px;" class="closebtn" onclick="closeNav()">&times;</a>
        <ul id="drops">
          <li>
            <i name="" class="fa fa-angle-down downa"></i>
            Current Status
            <ul id="currstatus">
              <li><input type="checkbox" value="0-15" /> Recent <span id="statusno">(12)</span></li>
              <li><input type="checkbox" value="0-15" /> Contacted <span id="statusno">(42)</span></li>
              <li><input type="checkbox" value="0-15" /> Interested <span id="statusno">(33)</span></li>
              <li><input type="checkbox" value="0-15" /> New Match <span id="statusno">(10)</span></li>
              <li><input type="checkbox" value="0-15" /> Shortlist <span id="statusno">(7)</span></li>
              <li><input type="checkbox" value="0-15" /> Inactive <span id="statusno">(15)</span></li>
              <li><input type="checkbox" value="0-15" /> Review <span id="statusno">(36)</span></li>
              <li><input type="checkbox" value="0-15" /> Interview 1 <span id="statusno">(37)</span></li>
              <li><input type="checkbox" value="0-15" /> Interview 2 <span id="statusno">(18)</span></li>
              <li><input type="checkbox" value="0-15" /> Offered <span id="statusno">(10)</span></li>
              <li><input type="checkbox" value="0-15" /> Rejected <span id="statusno">(22)</span></li>
            </ul>
          </li>
          <li>
            <i id="down" name="" class="fa fa-angle-down downb"></i>
            Ageing
            <ul id="ageing">
              <li><input type="checkbox" value="0-15" /> 0-15</li>
              <li><input type="checkbox" value="16-30" /> 16-30</li>
              <li><input type="checkbox" value="31-60" /> 31-60</li>
              <li><input type="checkbox" value="61-90" /> 61-90</li>
              <li><input type="checkbox" value="91 <" /> 91 <</li>
            </ul>
          </li>
          <li>
            <i id="down" class="fa fa-angle-down downc"></i>
            Skills
            <ul id="skills">
              <li><input type="checkbox" value="Java" /> Java</li>
              <li><input type="checkbox" value=".Net" /> .Net</li>
              <li><input type="checkbox" value="JavaScript" /> JavaScript</li>
              <li><input type="checkbox" value="Machine Learning" /> Machine Learning</li>
              <li><input type="checkbox" value=" Neural Networks" /> Neural Networks</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downd"></i>
            Experience
            <ul id="exp">
              <li><input type="checkbox" value="0" /> < 1 year</li>
              <li><input type="checkbox" value="1-2" /> 1-2 years</li>
              <li><input type="checkbox" value="3-5" /> 3-5 years</li>
              <li><input type="checkbox" value="6-10" /> 6-10 years</li>
              <li><input type="checkbox" value="> 10" /> > 10 years</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downe"></i>
            Source
            <ul id="source">
              <li><input type="checkbox" value="0-15" /> Referral</li>
              <li><input type="checkbox" value="16-30" /> Social</li>
              <li><input type="checkbox" value="31-60" /> Vendor</li>
              <li><input type="checkbox" value="61-90" /> Career page</li>
              <li><input type="checkbox" value="91 <" /> Job Boards</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downf"></i>
            Company
            <ul id="company">
              <li><input type="checkbox" value="0-15" /> Infosys</li>
              <li><input type="checkbox" value="16-30" /> TCS</li>
              <li><input type="checkbox" value="31-60" /> Wells Fargo</li>
              <li><input type="checkbox" value="61-90" /> Cognizant</li>
              <li><input type="checkbox" value="91 <" /> IBM</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downg"></i>
            Education
            <ul id="education">
              <li><input type="checkbox" value="0-15" /> B.E</li>
              <li><input type="checkbox" value="16-30" /> M.Tech</li>
              <li><input type="checkbox" value="31-60" /> B.Tech</li>
              <li><input type="checkbox" value="61-90" /> M.C.A</li>
              <li><input type="checkbox" value="91 <" /> PhD</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downh"></i>
            City
            <ul id="city">
              <li><input type="checkbox" value="0-15" /> Bangalore</li>
              <li><input type="checkbox" value="16-30" /> Hyderabad</li>
              <li><input type="checkbox" value="31-60" /> Mumbai</li>
              <li><input type="checkbox" value="61-90" /> Gurgaon</li>
              <li><input type="checkbox" value="91 <" /> Delhi</li>
            </ul>
          </li>
          <li>
            <i class="fa fa-angle-down downi"></i>
            Distance(kms/mls)
            <ul id="distance">
              <li><input type="checkbox" value="0-15" /> < 5 kms</li>
              <li><input type="checkbox" value="16-30" /> 6-8 kms</li>
              <li><input type="checkbox" value="31-60" /> 8-10 kms</li>
              <li><input type="checkbox" value="61-90" /> 11-15 kms</li>
              <li><input type="checkbox" value="91 <" /> 16 > kms</li>
            </ul>
          </li>
          </ul>
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
        <div id="title">
          <p>Sourcing</p>
        </div>
          <div class="row jdviewrow">
            <h3 class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="vertical-align:middle;"></h3>
          </div>

          <div class="row jdreview" style="margin-top: 0; margin-bottom: 2%;">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jdreviewcol">
              <div class="row" id="figures">
                <ul class="text-center">
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figa">Java<p>2224</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figb">.net<p>1560</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figc">C#<p>760</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figd">MySQL<p>2450</p></li>
                </ul>
                <ul>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="fige">SAP<p>354</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figf">Oracle<p>443</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figg">DBA<p>1237</p></li>
                  <li class="col-lg-3 col-md-6 col-sm-6 col-xs-12" id="figh">Architect<p>226</p></li>
                </ul>
              </div>
          </div>
          </div>

          <div class="row jdviewrow">
            <h3 class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="vertical-align:middle;"><g:checkBox name="name" value="${}" />&emsp;<a href="#" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a>&emsp;PROFILES</h3>
          </div>

          <div class="row jdreview">

            <div class="col-lg-12 jdreviewcol">
              <div class="row">
                  <ul class="col-lg-6 col-md-7 col-sm-12 col-xs-12" id="reviewid">
                    <li><g:checkBox name="name" value="${}" /></li>
                    <li style="width:18%; font-size:11px; font-weight: bold;">Sahil Shetty</li>
                    <li><span id="totscore">78%</span></li>
                    <li><a href="#" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></li>
                    <li><a href="#" data-toggle="tooltip" title="Resume attach"><i class="fa fa-file-text-o"></i></a></li>
                    <li><a href="#" data-toggle="tooltip" title="Share Candidate Details"><i class="fa fa-share-alt"></i></a></li>
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
                      <p>Interview Date: 23-01-2018 | Job Desc.: #0001 - Java Developer | Status: On hold</p>
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
    <asset:javascript src="profile.js"/>
</html>
