<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'demandAllocation.label', default: 'DemandAllocation')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'demand.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
        <asset:javascript src="sort.js" />
        <asset:javascript src="demand.js" />
    </head>
    <body>
        <a href="#list-demandAllocation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
                <li><asset:image id="profile" src="user.png" /></li>
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
              <a href="./index">Demand Allocation</a>
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
            <div id="title">
              <p>Demand Allocation</p>
            </div>
        <div id="exTab3" class="container panebody">
        <ul  class="nav nav-pills">
              <li class="active">
                <a  href="#1b" data-toggle="tab">Recruiter</a>
              </li>
              <li><a href="#2b" data-toggle="tab">Sourcing</a>
              </li>
              <li><a href="#3b" data-toggle="tab">Vendors</a>
              </li>
            </ul>

              <div class="tab-content clearfix">
                <div class="tab-pane active" id="1b">
                  <table id="demandMgmt" class="table-striped">
                      <thead>
                      <tr>
                        <th>Name of Recruiter</th>
                        <th>Country</th>
                        <th>City</th>
                        <th>Clients</th>
                        <th>Projects</th>
                        <th>JDs</th>
                        <th>Skills</th>
                        <th>#Positions</th>
                        <th>Total Positions</th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Ravi Verma</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>
                            <dl class="dropdown">
                              <dt>
                              <a href="#">
                                <span class="hida">Select</span>
                                <p class="multiSel"></p>
                              </a>
                              </dt>

                              <dd>
                                  <div class="mutliSelect">
                                      <ul>
                                          <li>
                                              <input type="checkbox" value="Accenture" /> Accenture</li>
                                          <li>
                                              <input type="checkbox" value="Wipro" /> Wipro</li>
                                          <li>
                                              <input type="checkbox" value="ScaleneWorks" /> ScaleneWorks</li>
                                      </ul>
                                  </div>
                              </dd>
                          </dl>
                          </td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>.net(14)</span></td>
                          <td>6</td>
                          <td>15</td>
                        </tr>
                        <tr>
                          <td>Tripti Goswami</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>Accenture</td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>Java(14)</span></td>
                          <td>6</td>
                          <td>15</td>
                        </tr>
                        <tr>
                          <td>Arunav Kishore</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>Accenture</td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>.net(14)</span></td>
                          <td>6</td>
                          <td>15</td>
                        </tr>
                      </tbody>
                  </table>
                  <button class="btn btn-success" id="demandrecsave">Save</button>
                </div>
                <div class="tab-pane" id="2b">
                  <table id="demandMgmt">
                      <thead>
                      <tr>
                        <th>Name of Sourcer</th>
                        <th>Country</th>
                        <th>City</th>
                        <th>Clients</th>
                        <th>Projects</th>
                        <th>JDs</th>
                        <th>Skills</th>
                        <th>#Positions</th>
                        <th>Total Positions</th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Partner</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>Accenture</td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>Java(24)</span></td>
                          <td>6</td>
                          <td>15</td>
                        </tr>
                      </tbody>
                  </table>
                  <button class="btn btn-success" id="demandrecsave">Save</button>
                </div>
                <div class="tab-pane" id="3b">
                  <table id="demandMgmt">
                      <thead>
                      <tr>
                        <th>Name of Vendor</th>
                        <th>Country</th>
                        <th>City</th>
                        <th>Clients</th>
                        <th>Projects</th>
                        <th>JDs</th>
                        <th>Skills</th>
                        <th>#Positions</th>
                        <th>Total Positions</th>
                      </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Weisner</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>Accenture</td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>Java(31)</span></td>
                          <td>6</td>
                          <td>15</td>
                        </tr>
                        <tr>
                          <td>Kritika</td>
                          <td>India</td>
                          <td>Bangalore</td>
                          <td>Accenture</td>
                          <td>Project 1</td>
                          <td>Job Description 2</td>
                          <td><span>.net(23)</span></td>
                          <td>18</td>
                          <td>23</td>
                        </tr>
                      </tbody>
                  </table>
                  <button class="btn btn-success" id="demandrecsave">Save</button>
                </div>
              </div>
          </div>
          <script>
    function openNav() {
        document.getElementById("mySidenav").style.width = "11%";
        document.getElementById("main").style.marginLeft = "11%";
        $('.panebody').animate({width:'72%',left:"-2%",marginTop:"0%"},200);
        $('.closebtn').css({visibility: 'visible'});
        $('#open').css({visibility: 'hidden'});
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft= "0";
        $('.panebody').animate({width:'83%',left:"-7%"},200);
        $('.figbdy').animate({marginTop:'-3.5%'},200);
        $('#open').css({visibility: 'visible'});
        $('.closebtn').css({visibility: 'hidden'});
    }
    </script>
    </body>
</html>
