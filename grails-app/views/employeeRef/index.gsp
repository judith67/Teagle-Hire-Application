<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employeeRef.label', default: 'EmployeeRef')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
        <a href="#list-employeeRef" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
          <a href="../leaderDashboard/index">Leader</a>
          <a href="../partners/index">Partners</a>
          <a href="../hiringManager/index">Hiring Manager</a>
          <a href="../sourcingTeam/index">Sourcing Team</a>
          <a href="./create">Admin</a>
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
        <div class="panel panel-default figbdy assess">
            <div class="panel-heading">PARTNERS</div>
          <div class="panel-body">
            <div class="row" id="figures">
              <ul>
                <li id="figa">Sourced<p>200</p></li>
                <li id="figb">New Match<p>60</p></li>
                <li id="figc">Contacted<p>60</p></li>
                <li id="figd">Shortlisted<p>50</p></li>
              </ul>
              <ul>
                <li id="fige">Technical 1<p>30</p></li>
                <li id="figf">Technical 2<p>18</p></li>
                <li id="figg" style="padding-right:8.6%;">HR Fit<p>17</p></li>
                <li id="figh" style="padding-right:8.5%;">Offered<p>5</p></li>
              </ul>
            </div>
          </div>
          </div>
            <div class="panel panel-default assess">
            <!-- Default panel contents -->
            <div class="panel-heading header-main">
              <div class="row panel-main">
                <div class="col-lg-4 text-left heading"><p>Open Positions</p></div>
                <div class="col-lg-3 text-right heading"><a href="#">Active Jobs</a></div>
                <div class="col-lg-3">
                  <div class="input-group search">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                    </span>
                  </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
                </div><!-- /.row -->
            </div>
            <div class="panel-body fit">
              <div class="row">
                <div class="col-lg-4 text-left recent"><span>Recent: </span><a href="#">Tech support, Tech support</a></div>
                <div class="col-lg-8 aboutcol">
                  <div class="row about">
                    <div class="col-lg-1"><p>200</p><p>Sourced</p></div>
                    <div class="col-lg-1"><p>60</p><p>New Match</p></div>
                    <div class="col-lg-1"><p>60</p><p>Contacted</p></div>
                    <div class="col-lg-1"><p>50</p><p>Shortlisted</p></div>
                    <div class="col-lg-1"><p>30</p><p>Technical 1</p></div>
                    <div class="col-lg-1"><p>18</p><p>Technical 2</p></div>
                    <div class="col-lg-1"><p>7</p><p>HR Fit</p></div>
                    <div class="col-lg-1"><p>5</p><p>Offered</p></div>
                  </div>
                </div>
              </div>
            </div>

            <table class="table">
              <tr id="head">
                <td><input type="checkbox" /></td>
                <td>Job # <i class="fa fa-angle-down sort" onclick="sortTable(0)"></i></td>
                <td>Client <i class="fa fa-angle-down sort" onclick="sortTable(1)"></i></td>
                <td>Project <i class="fa fa-angle-down sort" onclick="sortTable(2)"></i></td>
                <td>Job Title <i class="fa fa-angle-down sort" onclick="sortTable(3)"></i></td>
                <td>Skills <i class="fa fa-angle-down sort" onclick="sortTable(4)"></i></td>
                <td>Exp. <i class="fa fa-angle-down sort" onclick="sortTable(5)"></i></td>
                <td>Level <i class="fa fa-angle-down sort" onclick="sortTable(6)"></i></td>
                <td>City <i class="fa fa-angle-down sort" onclick="sortTable(7)"></i></td>
                <td>Type <i class="fa fa-angle-down sort" onclick="sortTable(8)"></i></td>
                <td>Duration <i class="fa fa-angle-down sort" onclick="sortTable(9)"></i></t h>
                <td>Status <i class="fa fa-angle-down sort" onclick="sortTable(10)"></i></td>
                <td>Match <i class="fa fa-angle-down sort" onclick="sortTable(11)"></i></td>
                <td></td>
                <td></td>
                <td><i class="fa fa-pencil"></i></td>
              </tr>
              <g:each in="${jobd}" var="jobs">
              <tr>
                <td><input type="checkbox" value="${jobs.title}"/></td>
                <td>${jobs.title}</td>
                <td>${jobs.postype}</td>
                <td>${jobs.country}</td>
                <td>${jobs.function}</td>
                <td>${jobs.nopos}</td>
                <td>${jobs.duration}</td>
                <td>${jobs.joblevel}</td>
                <td>${jobs.city}</td>
                <td>${jobs.jobtitle}</td>
                <td>${jobs.duration}</t h>
                <td>${jobs.roles}</td>
                <td>${jobs.salary}</td>
                <td>${jobs.billable}</td>
                <td></td>
                <td><a href="#"><i class="fa fa-pencil"></i></a></td>
              </tr>

          </g:each>
            </table>
          </div>
        </div>
          <div class="panel panel-default second assess">
          <!-- Default panel contents -->
          <div class="panel-heading header-main">
            <div class="row panel-main">
              <div class="col-lg-4 text-left heading"><p>Profile Pipeline</p></div>
              <div class="col-lg-3 text-right heading"><a href="#">Upload resume</a></div>
              <div class="col-lg-3">
                <div class="input-group search">
                  <input type="text" class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                  </span>
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
              </div><!-- /.row -->
          </div>
          <table class="table">
            <tr id="head">
              <td><input type="checkbox" /></td>
              <td>Cand #</td>
              <td></td>
              <td>Name <i class="fa fa-angle-down sort"></i></td>
              <td>Phone <i class="fa fa-angle-down sort"></i></td>
              <td>Email <i class="fa fa-angle-down sort"></i></td>
              <td>Skills <i class="fa fa-angle-down sort"></i></td>
              <td>Exp(yrs) <i class="fa fa-angle-down sort"></i></td>
              <td>City <i class="fa fa-angle-down sort"></i></td>
              <td>NP(days)  <i class="fa fa-angle-down sort"></i></td>
              <td>Type <i class="fa fa-angle-down sort"></i></td>
              <td>Match <i class="fa fa-angle-down sort"></i></td>
              <td>Interest <i class="fa fa-angle-down sort"></i></td>
              <td>Status <i class="fa fa-angle-down sort"></i></td>
              <td>Rating <i class="fa fa-angle-down sort"></i></td>
              <td></td>
              <td></td>
              <td><i class="fa fa-pencil"></i></td>
            </tr>
            <g:each in="${jobd}" var="jobs">
            <tr id="table2">
              <td><input type="checkbox" /></td>
              <td>#0001</td>
              <td><g:img dir="images" file="profile.png" width="20" height="20"/></td>
              <td>${jobs.resumes.candname}</td>
              <td>${jobs.resumes.phone}</td>
              <td>${jobs.resumes.email}</td>
              <td>${jobs.resumes.state}</td>
              <td>${jobs.resumes.year}</td>
              <td>${jobs.resumes.city}</td>
              <td>${jobs.resumes.np}</td>
              <td>${jobs.resumes.resumetitle}</td>
              <td>${jobs.resumes.relocation}</td>
              <td><p id="interest">${jobs.resumes.interest}</p></td>
              <td>Match</td>
              <td><span id="totscore">${jobs.resumes.rating}%</span></td>
              <td></td>
              <td></td>
              <td><i class="fa fa-pencil"></i></td>
            </tr>
          </g:each>
          </table>
          </div>


        <script>
    function openNav() {
      document.getElementById("mySidenav").style.width = "13%";
      document.getElementById("main").style.marginLeft = "13%";
      $('.assess').animate({width:'71%',left:'-14%'},500);
      $('.closebtn').css({visibility: 'visible'});
      $('#open').css({visibility: 'hidden'});
    }

    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      document.getElementById("main").style.marginLeft= "0";
      $('.assess').animate({width:'82%',left:'-15%'},500);
      $('#open').css({visibility: 'visible'});
      $('.closebtn').css({visibility: 'hidden'});
    }
    </script>
    </body>
</html>
