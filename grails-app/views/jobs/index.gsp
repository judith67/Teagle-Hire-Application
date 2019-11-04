
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'jobs.label', default: 'Jobs')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
        <asset:javascript src="sort.js" />
    </head>
    <body>
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
              <a href="./index">Home</a>
              <a href="../Dashboard/index">Dashboard</a>
              <a href="../employeeRef/index">Employee Referrals</a>
              <a href="../leaderDashboard/index">Leader</a>
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
                <li>
                  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <script type="text/javascript">
                    google.charts.load('current', {'packages':['bar']});
                    google.charts.setOnLoadCallback(drawStuff);

                    function drawStuff() {
                      var data = new google.visualization.arrayToDataTable([
                        ['Funnel', 'Percentage'],
                        ['Matched', 44],
                        ['Recruiter', 31],
                        ['Review', 12],
                        ['Tech 1', 10],
                        ['Tech 2', 10],
                        ['HR', 10],
                        ['Offered', 3],
                        ['Joined', 10]
                      ]);

                      var options = {
                        title: 'Candidate Funnel',
                        width: 300,
                        fontSize: {type: 'number', default: '10px'},
                        bars: 'vertical', // Required for Material Bar Charts.
                        fontSize: {type: 'number', default: '10'},
                        bar: { groupWidth: "100%" }
                      };

                      var chart = new google.charts.Bar(document.getElementById('top_x_div'));
                      chart.draw(data, options);
                    };
                    </script>
                  <div id="top_x_div" style="width: 100% !important; height: 80% !important; font-size: 10px !important;"></div>

                </li>
                <li>
                  <!--Load the AJAX API-->
                  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                  <script type="text/javascript">

                        // Load the Visualization API and the piechart package.
                    google.charts.load('current', {'packages':['corechart']});

                    // Set a callback to run when the Google Visualization API is loaded.
                    google.charts.setOnLoadCallback(drawChart);

                    // Callback that creates and populates a data table,
                    // instantiates the pie chart, passes in the data and
                    // draws it.
                    function drawChart() {

                    // Create the data table.
                    var data = new google.visualization.DataTable();
                    data.addColumn('string', 'Topping');
                    data.addColumn('number', 'Slices');
                    data.addRows([
                      ['Social', 30],
                      ['CareerPage', 15],
                      ['Vendors', 40],
                      ['ER', 20],
                      ['Head Hunting', 15],
                      ['Portals',100],
                      ['Rejoinee',5]
                    ]);

              // Set chart options
                    var options = {'title':'Source'};

                    // Instantiate and draw our chart, passing in some options.
                    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
                    chart.draw(data, options);
                  }
                  </script>
              <!--Div that will hold the pie chart-->
                  <div id="chart_div" class="graphsource"></div>
                </li>
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
            <div id="exTab3" class="container panebody">
            <ul  class="nav nav-pills">
                  <li class="active">
                    <a  href="#1a" data-toggle="tab">Home</a>
                  </li>
                  <li><a href="#2a" data-toggle="tab">Jobs</a>
                  </li>
                  <li><a href="#3a" data-toggle="tab">Pipeline</a>
                  </li>
                  <li><a href="#4a" data-toggle="tab">Candidate Profile</a>
                  </li>
                  <li><a href="#5a" data-toggle="tab">Sourcing</a>
                  </li>
                  <li><a href="#6a" data-toggle="tab">Interview Schedule</a>
                  </li>
                  <li><a href="#7a" data-toggle="tab">Interview Feedback</a>
                  </li>
                  <li><a href="#8a" data-toggle="tab">Onboarding</a>
                  </li>
                </ul>

                  <div class="tab-content clearfix">
                    <div class="tab-pane active" id="1a">
                      <div class="row rowb jobtbl">
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="interview">

                            <span href="#2a" data-toggle="tab">Open Positions <span id="positioncounter"><span>123</span>/347</span></span>

                            <div class="row recentprofiles">
                              <div class="col-lg-2 text-left"><a href="#">Tech support, Tech support</a> <a href="" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></div>
                              <div class="col-lg-1 jddrop">
                                    <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                        <div class="dropdown">
                                            <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-info" data-target="#" href="/page.html">
                                              Filter By <span class="caret"></span>
                                            </a>
                                        <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                              <li class="dropdown-submenu">
                                                <a tabindex="-1" id="client" href="#">Accenture</a>
                                                <ul class="dropdown-menu">
                                                  <li class="dropdown-submenu">
                                                    <a href="#" id="project">Project 1</a>
                                                  </li>
                                                  <li class="dropdown-submenu">
                                                    <a href="#">Project 2</a>
                                                  </li>
                                                </ul>
                                              </li>
                                              <li class="dropdown-submenu">
                                                <a tabindex="-1" id="client" href="#">TCS</a>
                                                <ul class="dropdown-menu">
                                                  <li class="dropdown-submenu">
                                                    <a href="#">Project 1</a>
                                                  </li>
                                                </ul>
                                              </li>
                                            </ul>
                              </div>
                            </div>
                          </div>

                              <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                                <div class="row status">
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Sourced</p><p>200</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>New Match</p><p>60</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Contacted</p><p>60</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Shortlisted</p><p>50</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Technical 1</p><p>30</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Technical 2</p><p>18</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>HR Fit</p><p>7</p></div>
                                  <div class="col-lg-1 col-md-1 col-sm-3 col-xs-4"><p>Offered</p><p>5</p></div>
                                </div>
                              </div>
                            </div>
                            <table id="myTable" class="table-striped">
                              <thead>
                                  <tr id="head">
                                    <th><input type="checkbox" id="checkall" /></td>
                                    <th>Job # <i class="fa fa-angle-down sort" onclick="sortTable(0)"></i></th>
                                    <th>Client <i class="fa fa-angle-down sort" onclick="sortTable(1)"></i></th>
                                    <th>Project <i class="fa fa-angle-down sort" onclick="sortTable(2)"></i></th>
                                    <th>Job Title <i class="fa fa-angle-down sort" onclick="sortTable(3)"></i></th>
                                    <th># Positions<i class="fa fa-angle-down sort" onclick="sortTable(2)"></i></th>
                                    <th>Ageing<i class="fa fa-angle-down sort" onclick="sortTable(10)"></i></th>
                                    <th>Skills <i class="fa fa-angle-down sort" onclick="sortTable(4)"></i></th>
                                    <th>Exp. <i class="fa fa-angle-down sort" onclick="sortTable(5)"></i></th>
                                    <th>Level <i class="fa fa-angle-down sort" onclick="sortTable(6)"></i></th>
                                    <th>City <i class="fa fa-angle-down sort" onclick="sortTable(7)"></i></th>
                                    <th>Type <i class="fa fa-angle-down sort" onclick="sortTable(8)"></i></th>
                                    <th>Duration <i class="fa fa-angle-down sort" onclick="sortTable(9)"></i></th>
                                    <th>Status <i class="fa fa-angle-down sort" onclick="sortTable(10)"></i></th>
                                    <th>Match <i class="fa fa-angle-down sort" onclick="sortTable(11)"></i></th>
                                    <th></th>
                                    <th></th>
                                    <th>Edit</th>
                                  </tr>
                              </thead>
                                <g:each in="${jobd}" var="jobs">
                              <tbody>
                                <tr class="canddetails">
                                  <td><input type="checkbox" id="checkone" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>${jobs.jobstatus}</td>
                                  <td>${jobs.billable}</td>
                                  <td><a data-toggle="modal" data-target="#myModal"><i class="fa fa-share-alt"></i></a>

                                    <!-- Modal -->
                                      <div id="myModal" class="modal fade" role="dialog">
                                        <div class="modal-dialog modalcover">

                                          <!-- Modal content-->
                                          <div class="modal-content">
                                            <div class="modal-header shareheader">
                                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                                              <h4 class="modal-title">Share</h4>
                                            </div>
                                            <div class="modal-body sharebody">
                                              <div id="exTab3" class="container">
                                              <ul  class="nav nav-pills">
                                              			<li class="active">
                                                      <a  href="#1b" data-toggle="tab">Social</a>
                                              			</li>
                                              			<li><a href="#2b" data-toggle="tab">Jobboards</a>
                                              			</li>
                                              			<li><a href="#3b" data-toggle="tab">Vendors</a>
                                              			</li>
                                                		<li><a href="#4b" data-toggle="tab">Recruiter</a>
                                              			</li>
                                              		</ul>

                                              			<div class="tab-content clearfix">
                                              			  <div class="tab-pane active" id="1b">
                                                        <ul id="shareicons">
                                                          <li><g:checkBox name="facebook" value="${true}" /><i class="fa fa-facebook"></i></li>
                                                          <li><g:checkBox name="twitter" value="${true}" /><i class="fa fa-twitter"></i></li>
                                                          <li><g:checkBox name="googleplus" value="${true}" /><i class="fa fa-google-plus"></i></li>
                                                          <li><g:checkBox name="whatsapp" value="${true}" /><i class="fa fa-whatsapp"></i></li>
                                                          <li><g:checkBox name="linkedin" value="${true}" /><i class="fa fa-linkedin"></i></li>
                                                          <li><g:checkBox name="techgig" value="${}" />T<span>G</span></li>
                                                          <li><g:checkBox name="github" value="${}" /><i class="fa fa-github"></i></li>
                                                        </ul>
                                                        <ul id="sharetext">
                                                          <li>
                                                            <div id="jdshare">
                                                            </div>
                                                          </li>
                                                          <li>Share joblink example: <a href="https://myteagle.com/careerPage">https://myteagle.com/careerPage</a></li>
                                                        </ul>
                                              				</div>
                                              				<div class="tab-pane" id="2b">
                                                        <ul id="jobboardsshare">
                                                          <li><g:checkBox name="naukri" value="${}" />Naukri</li>
                                                          <li><g:checkBox name="dice" value="${}" />Dice</li>
                                                          <li><g:checkBox name="indeed" value="${}" />Indeed</li>
                                                          <li><g:checkBox name="monster" value="${}" />Monster</li>
                                                          <li><g:checkBox name="github" value="${}" />Ladder</li>
                                                        </ul>
                                                      </div>
                                                      <div class="tab-pane" id="3b">
                                                        <h3><a href="">Vendor Share</a></h3>
                                                      </div>
                                                        <div class="tab-pane" id="4b">
                                                        <h3><a href="">Recruiter Share</a></h3>
                                              				</div>
                                              			</div>
                                                </div>
                                            </div>
                                            <div class="modal-footer sharefooter">
                                              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                              <button type="button" class="btn btn-primary">Share</button>
                                            </div>
                                          </div>

                                        </div>
                                      </div>


                                    </td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" id="checkone" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>${jobs.jobstatus}</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" id="checkone" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>${jobs.jobstatus}</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>Cancelled</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>On hold</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>${jobs.jobstatus}</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>Cancelled</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>Cancelled</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>On hold</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                                <tr class="canddetails">
                                  <td><input type="checkbox" value="${jobs.title}"/></td>
                                  <td>${jobs.title}</td>
                                  <td data-toggle="modal" data-target="#myModal">${jobs.client}</td>
                                  <td>${jobs.projectname}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.nopos}</td>
                                  <td>27</td>
                                  <td>${jobs.exp}</td>
                                  <td>${jobs.joblevel}</td>
                                  <td>${jobs.city}</td>
                                  <td>${jobs.jobtitle}</td>
                                  <td>${jobs.duration}</t h>
                                  <td>${jobs.roles}</td>
                                  <td>${jobs.jobstatus}</td>
                                  <td>${jobs.billable}</td>
                                  <td><a href=""><i class="fa fa-share-alt"></i></a></td>
                                  <td></td>
                                  <td><a href="#"><i class="fa fa-pencil"></i></a></td>
                                </tr>
                              </tbody>
                          </g:each>
                            </table>
                          </div>
                        </div>
                        <!-- Profile Pipeline -->
                        <div class="row rowb jobtbl">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="interview">

                              <span>Profile Pipeline</span>

                              <div class="row recentprofiles">
                                <div class="col-lg-2 text-left"><a href="#">Tech support, Tech support</a> <a href="" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></div>
                                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                  <div class="input-group jobsearch" id="searchprofile">
                                    <input type="text" class="form-control" placeholder="Search by ID, name, email ">
                                    <span class="input-group-btn">
                                      <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                                    </span>
                                  </div>
                                </div>
                              </div>
                              <table class="table-striped resumetbl">
                                <thead>
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
                                    <td>Ageing <i class="fa fa-angle-down sort"></i></td>
                                    <td>Match <i class="fa fa-angle-down sort"></i></td>
                                    <td>Interest <i class="fa fa-angle-down sort"></i></td>
                                    <td>Status <i class="fa fa-angle-down sort"></i></td>
                                    <td>Rating <i class="fa fa-angle-down sort"></i></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                </thead>

                                  <g:each in="${jobd}" var="jobs">
                                <tbody>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">65%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">33%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                  <tr class="canddetails">
                                    <td><input type="checkbox" /></td>
                                    <td>#0001</td>
                                    <td><g:img dir="images" file="user.png" width="20" height="20"/></td>
                                    <td>${jobs.resumes.candname}</td>
                                    <td>${jobs.resumes.phone}</td>
                                    <td>${jobs.resumes.email}</td>
                                    <td>${jobs.resumes.state}</td>
                                    <td>${jobs.resumes.year}</td>
                                    <td>${jobs.resumes.city}</td>
                                    <td>${jobs.resumes.np}</td>
                                    <td>${jobs.resumes.resumetitle}</td>
                                    <td>3</td>
                                    <td>${jobs.resumes.relocation}</td>
                                    <td><g:select name="candstatus" from="['Contacted','Interested','Not Interested','Awaiting']" /></td>
                                    <td><g:select name="candstatus" from="['Matched','Contacted','Recruiter','Review','Tech 1','Tech 2','Client','HR','Offered','Joined']" /></td>
                                    <td><span id="totscore">${jobs.resumes.rating}%</span></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fa fa-pencil"></i></td>
                                  </tr>
                                </tbody>
                            </g:each>
                              </table>
                            </div>
                          </div>
                        <!-- Profile pipeline Ends here -->
                    </div>
                    <div class="tab-pane" id="2a">
                      <div class="row jdviewrow">
                        <h3 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></h3>
                        <ul class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="openjd">
                          <li><h3>Open Positions</h3></li>
                          <li id="menu">
                            <div>
                                <div class="dropdown">
                                    <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-info" data-target="#" href="/page.html">
                                      Filter by <span class="caret"></span>
                                    </a>
                                <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                      <li class="dropdown-submenu">
                                        <a tabindex="-1" id="client" href="#">Accenture</a>
                                        <ul class="dropdown-menu">
                                          <li class="dropdown-submenu">
                                            <a href="#" id="project">Project 1</a>
                                          </li>
                                          <li class="dropdown-submenu">
                                            <a href="#">Project 2</a>
                                          </li>
                                        </ul>
                                      </li>
                                      <li class="dropdown-submenu">
                                        <a tabindex="-1" id="client" href="#">TCS</a>
                                        <ul class="dropdown-menu">
                                          <li class="dropdown-submenu">
                                            <a href="#">Project 1</a>
                                          </li>
                                        </ul>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </li>
                              </ul>
                            </div>

                <div class="row jdreview">
                  <ul class="row" id="openjdb">
                    <li class="col-lg-3 col-md-6 col-sm-12 col-xs-12">JD Name: Java Developer</li>
                    <li class="col-lg-3 col-md-3 col-sm-12 col-xs-12">Recent: <a href="">Tech support</a>, <a href="">Tech support</a></li>
                    <li class="col-lg-6 col-md-3 col-sm-12 col-xs-12 text-right">Posted By: Sushil Pathak ${new Date()}</li>
                  </ul>
                  <div class="col-lg-12 jdreviewcol">
                  <div class="row">
                  <ul class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <li>Client</li>
                    <li>Project</li>
                    <li>Function</li>
                    <li>Job Title</li>
                    <li># years Exp.</li>
                    <li>Education</li>
                  </ul>
                  <ul class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <li>City</li>
                    <li>Duration</li>
                    <li>Type of Emp.</li>
                    <li>Salary(CTC): 10-15 lpa</li>
                    <li>Bill Rate</li>
                    <li>Billable</li>
                  </ul>
                  <ul class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="analysis">
                    <li>
                      <ul>
                        <li><p>4<br><span>Ageing</span></p></li>
                        <li><p>200<br><span>Sourced</span></p></li>
                        <li><p>60<br><span>New Match</span></p></li>
                        <li><p>60<br><span>Contacted</span></p></li>
                        <li><p>50<br><span>Shortlisted</span></p></li>
                        <li><p>30<br><span>Technical 1</span></p></li>
                        <li><p>18<br><span>Technical 2</span></p></li>
                        <li><p>7<br><span>HR Fit</span></p></li>
                        <li><p>5<br><span>Offered</span></p></li>
                      </ul>
                    </li>
                    <li>
                      <div class="progress newprogress jdprogress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        78%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        56%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        63%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        70%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        67%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        95%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        86%
                        </div>
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
                  <ul class="row" id="openjdb">
                    <li class="col-lg-3 col-md-6 col-sm-12 col-xs-12">JD Name: .net Developer</li>
                    <li class="col-lg-3 col-md-3 col-sm-12 col-xs-12">Recent: <a href="">Tech support</a>, <a href="">Tech support</a></li>
                    <li class="col-lg-6 col-md-3 col-sm-12 col-xs-12 text-right">Posted By: Charit Kundar ${new Date()}</li>
                  </ul>
                  <div class="col-lg-12 jdreviewcol">
                  <div class="row">
                  <ul class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <li>Client</li>
                    <li>Project</li>
                    <li>Function</li>
                    <li>Job Title</li>
                    <li># years Exp.</li>
                    <li>Education</li>
                  </ul>
                  <ul class="col-lg-3 col-md-6 col-sm-12 col-xs-12">
                    <li>City</li>
                    <li>Duration</li>
                    <li>Type of Emp.</li>
                    <li>Salary(CTC): 10-15 lpa</li>
                    <li>Bill Rate</li>
                    <li>Billable</li>
                  </ul>
                  <ul class="col-lg-6 col-md-6 col-sm-12 col-xs-12" id="analysis">
                    <li>
                      <ul>
                        <li><p>7<br><span>Ageing</span></p></li>
                        <li><p>337<br><span>Sourced</span></p></li>
                        <li><p>77<br><span>New Match</span></p></li>
                        <li><p>74<br><span>Contacted</span></p></li>
                        <li><p>45<br><span>Shortlisted</span></p></li>
                        <li><p>30<br><span>Technical 1</span></p></li>
                        <li><p>17<br><span>Technical 2</span></p></li>
                        <li><p>5<br><span>HR Fit</span></p></li>
                        <li><p>5<br><span>Offered</span></p></li>
                      </ul>
                    </li>
                    <li>
                      <div class="progress jdprogress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        78%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        56%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        63%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        70%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        67%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        95%
                        </div>
                        <div class="progress-bar progress-bar-primary" role="progressbar" style="width:14.28%">
                        86%
                        </div>
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
                    </div>
                    <div class="tab-pane" id="3a">
                      <div class="row jdviewrow">
                        <h3 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></h3>
                        <ul class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="openjd">
                          <li><h3>Open Positions</h3></li>
                          <li id="menu">
                            <div>
                                <div class="dropdown">
                                    <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-info" data-target="#" href="/page.html">
                                      Filter by <span class="caret"></span>
                                    </a>
                                <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                      <li class="dropdown-submenu">
                                        <a tabindex="-1" id="client" href="#">Accenture</a>
                                        <ul class="dropdown-menu">
                                          <li class="dropdown-submenu">
                                            <a href="#" id="project">Project 1</a>
                                          </li>
                                          <li class="dropdown-submenu">
                                            <a href="#">Project 2</a>
                                          </li>
                                        </ul>
                                      </li>
                                      <li class="dropdown-submenu">
                                        <a tabindex="-1" id="client" href="#">TCS</a>
                                        <ul class="dropdown-menu">
                                          <li class="dropdown-submenu">
                                            <a href="#">Project 1</a>
                                          </li>
                                        </ul>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </li>
                              </ul>
                              <ul class="row" id="openjdb">
                                <li class="col-lg-6 col-md-6 col-sm-12 col-xs-12">Recent: <a href="">Tech support</a>, <a href="">Tech support</a></li>
                                <li class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-right">
                                      <ul id="profileanalysis">
                                        <li><p>337<br><span>Sourced</span></p></li>
                                        <li><p>77<br><span>New Match</span></p></li>
                                        <li><p>74<br><span>Contacted</span></p></li>
                                        <li><p>45<br><span>Shortlisted</span></p></li>
                                        <li><p>30<br><span>Technical 1</span></p></li>
                                        <li><p>17<br><span>Technical 2</span></p></li>
                                        <li><p>5<br><span>HR Fit</span></p></li>
                                        <li><p>5<br><span>Offered</span></p></li>
                                      </ul>
                                </li>
                              </ul>
                            </div>

                      <div class="row jdreview">

                        <div class="col-lg-12 jdreviewcol">
                          <div class="row">
                              <ul class="col-lg-6 col-md-7 col-sm-12 col-xs-12" id="reviewid">
                                <li><g:checkBox name="name" value="${}" /></li>
                                <li style="width:18%; font-size:11px; font-weight: bold;">Sahil Shetty</li>
                                <li><span id="totscore">78%</span></li>
                                <li><a href="#" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" title="View Candidate Details"><i class="fa fa-file-text-o"></i></a></li>
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
                      <!--second candidate-->
                      <div class="row jdreview">

                        <div class="col-lg-12 jdreviewcol">
                          <div class="row">
                              <ul class="col-lg-6 col-md-7 col-sm-12 col-xs-12" id="reviewid">
                                <li><g:checkBox name="name" value="${}" /></li>
                                <li style="width:20%; font-size:11px; font-weight: bold;">Praveen Kumar</li>
                                <li><span id="totscore">59%</span></li>
                                <li><a href="#" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" title="View Candidate Details"><i class="fa fa-file-text-o"></i></a></li>
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
                    </div>
                    <div class="tab-pane" id="4a">
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
                    </div>
                  </div>
                      <div class="tab-pane" id="5a">
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
                    </div>
                      <div class="tab-pane" id="6a">
                        <g:form resource="${this.interviewSchedule}" method="POST">
                            <fieldset class="form">
                                      <div class="container">
                                        <div class="row">
                                          <div class="col-lg-6">
                                              <div class="dropdown">
                                                  <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-info" data-target="#" href="/page.html">
                                                    Client <span class="caret"></span>
                                                  </a>
                                              <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                                    <li class="dropdown-submenu">
                                                      <a tabindex="-1" id="client" href="#">Client 1</a>
                                                      <ul class="dropdown-menu">
                                                        <li class="dropdown-submenu">
                                                          <a href="#" id="project">Project 1</a>
                                                          <ul class="dropdown-menu">
                                                              <li><a href="#">Job Description 1</a></li>
                                                            <li><a href="#">Job Description 2</a></li>
                                                          </ul>
                                                        </li>
                                                        <li class="dropdown-submenu">
                                                          <a href="#">Project 2</a>
                                                          <ul class="dropdown-menu">
                                                              <li><a href="#">Job Description 1</a></li>
                                                            <li><a href="#">Job Description 2</a></li>
                                                          </ul>
                                                        </li>
                                                      </ul>
                                                    </li>
                                                    <li class="dropdown-submenu">
                                                      <a tabindex="-1" id="client" href="#">Client 2</a>
                                                      <ul class="dropdown-menu">
                                                        <li class="dropdown-submenu">
                                                          <a href="#">Project 1</a>
                                                          <ul class="dropdown-menu">
                                                              <li><a class="submenujd" href="#" value="jd1">Job Description 1</a></li>
                                                            <li><a class="submenujd" href="#" value="jD2">Job Description 2</a></li>
                                                          </ul>
                                                        </li>
                                                      </ul>
                                                    </li>
                                                  </ul>
                                              </div>
                                            </div>
                                            <div class="col-lg-6">
                                              <ul id="display">
                                                <li><label id="showjobs">#0001 Job Description</label></li>
                                              </ul>
                                            </div>
                                            </div>
                                        </div>

            <br>
            <!--Base Design-->
              <span style="margin-left:1.5%;">Schedule Interview</span>
              <div class="row interview">
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" id="interview">
                  <table class="table-striped">
                    <thead>
                      <tr>
                        <th><g:checkBox id="checkall" name="name" value="" /></th>
                        <th>Candidates</th>
                        <th>Email</th>
                        <th>Phone</th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td><g:checkBox name="name" id="checkone" value="" /></td>
                          <td id="candname">Matheu stuart</td>
                          <td>mstuart@gmail.com</td>
                          <td>9785775345</td>
                        </tr>
                    </tbody>
                  </table>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-xs-12" id="interview">
                  <table class="table-striped">
                    <thead>
                      <tr>
                        <th><g:checkBox name="name" id="checkallb" value="" /></th>
                        <th>Interviewers</th>
                        <th>Phone</th>
                        <th>City</th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td><g:checkBox name="name" id="checkoneb" value="" /></td>
                          <td>Karnika Kashyap</td>
                          <td>karnikak@gmail.com</td>
                          <td>Bangalore</td>
                        </tr>
                    </tbody>
                  </table>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12" id="interview">
                  <table class="table-striped">
                    <thead>
                      <tr>
                        <th><g:checkBox id="checkallc" name="name" value="" /></th>
                        <th>Date</th>
                        <th>Time</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                        <tr>
                          <td><g:checkBox name="name" id="checkonec" value="" /></td>
                          <td><joda:dateField name="interviewDate" value=""/></td>
                          <td><joda:timeField name="interviewtime" value=""/></td>
                          <td class="centerbtn"><button>OK</button></td>
                        </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            <!--Base Design Ends -->
            <!--Email Body-->
                <div class="row rowb">
                    <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12" id="interview">
                      <span>Scheduled Candidates</span>
                      <table class="table-striped">
                        <thead>
                          <tr>
                            <th>Cadidate</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Interviewer</th>
                          </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <td id="namedisplay">Matheu stuart</td>
                              <td>mstuart@gmail.com</td>
                              <td>9785775345</td>
                              <td>23-01-2018</td>
                              <td>14:15 PM</td>
                              <td>Karnika Kashyap</td>
                            </tr>
                        </tbody>
                      </table>
                    </div>
                  <div class="col-lg-3 col-md-12 colsm-12 col-xs-12"  id="email">
                    <table id="mail">
                      <tr>
                        <td>Name: </td>
                        <td><g:textField name="name" value="" placeholder="Enter name" /></td>
                      </tr>
                      <tr>
                        <td>Email: </td>
                        <td><g:textField name="toemail" value="" placeholder="receiver@example.com" /></td>
                      </tr>
                      <tr>
                        <td>From: </td>
                        <td><g:textField name="fromemail" value="" placeholder="sender@example.com" /></td>
                      </tr>
                      <tr>
                        <td>Subject: </td>
                        <td><g:textField name="subject" value="" placeholder="Your subject?" /></td>
                      </tr>
                      <tr>
                        <td>Message: </td>
                        <td><g:textArea name="msg" id="msg" value="${value}" placeholder="Enter the suitable message"/>
                          <br>
                          <a href="#" class="btn btn-info" id="bold"><strong>B</strong></a>
                          <a href="#" class="btn btn-info" id="italic"><i>I</i></a>
                          <a href="#" class="btn btn-info" id="delete"><i class="fa fa-trash-o"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td><g:submitButton name="sendmail" value="Send" /></td>
                      </tr>
                    </table>
                  </div>
              </div>
            <!--Email Body Ends Here-->


                            </fieldset>
                            <!-- <fieldset class="buttons">
                                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                            </fieldset> -->
                        </g:form>
                    </div>
                      <div class="tab-pane" id="7a">
                        <div class="panel panel-default assess jdviewrow ">
                            <div class="panel-heading"><h4>INTERVIEW ASSESSMENT</h4></div>
                            <div class="panel-heading secondpanel">
                                <ul id="jdassess">
                                    <li><h6 id="redo">#0001: Java Developer</h6></li>
                                    <li>Client: Tesco</li>
                                    <li>Project: Automation Project</li>
                                    <li><i class="fa fa-map-marker"></i> : Bangalore</li>
                                    <li>Experience: 2 yrs.</li>
                                </ul>
                                <div class="row">
                                    <div class="col-lg-2" style="width: 48.8%;">
                                        <p id="priskill">Primary Skills:
                                            <span class="label label-danger">Java</span>
                                            <span class="label label-info">.net</span>
                                            <span class="label label-warning">JS</span>
                                        </p>
                                    </div>
                                    <div class="col-lg-2" style="width: 33%;">
                                        <p id="priskill">Secondary Skills:
                                            <span class="label label-primary">Java</span>
                                            <span class="label label-danger">.net</span>
                                            <span class="label label-warning">JS</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body assessbody">
                                <div class="row outer">
                                    <div class="row" style="margin-left: -2%;">
                                        <div class="col-lg-6 text-left">
                                            <ul id="firstlist">
                                                <li style="margin-left: -10%;"><h3><b>Judith Kaushik</b></h3></li>
                                                <li><i class="fa fa-eye"></i></li>
                                                <li><span id="totscore">78%</span></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-6 text-right ">
                                            <ul id="firstlist">
                                                <li><a href="" data-toggle="tooltip" title="Upload Assessment">Upload Assessment <i class="fa fa-upload"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-left: 1%;">
                                        <div class="col-lg-12">
                                            <div class="row details space" style="padding-top: 5px;">
                                                <div class="col-lg-5 text-left location">
                                                    <p>Exp: 3 yrs (2 months)</p>
                                                    <p>Current Designations</p>
                                                    <p>Current Company</p>
                                                </div>
                                                <div class="col-lg-5 text-left">
                                                    <p>Current Location</p>
                                                    <p>Phone</p>
                                                    <p>Email</p>
                                                </div>
                                                <div class="col-lg-2 text-left">
                                                    <p>Education</p>
                                                    <p>Industry</p>
                                                    <p>Email</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        </div>
                        <div class="panel panel-default assess  jdviewrow ">
                            <div class="panel-heading">
                               Interview Rating & Comments
                            <span>
                                <g:select from="['Recruiter','Tech 1','Tech 2', 'Tech 3', 'Client', 'HR']" name="interviewer" />
                            </span>
                            </div>
                            <div class="panel-footer foot">
                                <div class="row" style="margin-left: 1%;">
                                    <div class="col-lg-12">
                                        <div class="row details space" style="padding-top: 5px;">
                                            <div class="col-lg-3 text-left">
                                                <p>Primary Skills -
                                                    <span>50%</span></p>
                                                <p>Java</p>
                                                <p>Spring</p>
                                                <p>MySQL</p>
                                            </div>
                                            <div class="col-lg-1 text-left">
                                                <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" class="percnt" id="percnt" name="percnt">
                                            </div>
                                            <div class="col-lg-3 text-left">
                                                 <p>Secondary Skills -
                                                     <span>30%</span></p>
                                                 <p>Grails</p>
                                                 <p>Adobe Designing tools</p>
                                                 <p>GGTS</p>
                                            </div>
                                            <div class="col-lg-1 text-left">
                                                <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" class="percnt" id="percnt" name="percnt">
                                            </div>

                                            <div class="col-lg-3 text-left ">
                                                <p>Desired Skills -
                                                    <span>20%</span></p>
                                                <p>Treasury Mgmt</p>
                                                <p>Equities Speculation</p>
                                                <p>Mortgage</p>
                                            </div>
                                            <div class="col-lg-1 text-left">
                                                <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" class="percnt" id="percnt" name="percnt">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            <div class="panel-body bodycomment">
                                <div>
                                    <g:form name="myForm" action="" id="1">
                                        <g:textField name="commentbox"  placeholder="Interview comments here..." value="" />
                                </div>
                            </div>

                            <div class="panel-footer footerlist">
                                <p>Interviewer Name: </p>
                                <p>Recommendation:
                                <span>
                                <g:select from="['Selected','Onhold','Reject']" name="recommend" id=""></g:select>
                                </span>
                                </p>
                                <p>Date: </p>
                                <g:submitButton name="submit" value="Save" />
                            </div>

                                    </g:form>
                        </div>
                        <div class="panel panel-default assess  jdviewrow  ">
                           <div class="panel-heading">
                               <h4>Approval for Selection</h4>
                           </div>
                            <div class="panel-body">
                                <table class="table table-striped tblhire">
                                    <tr id="headtable">
                                        <td>Hiring Manager</td>
                                        <td>Comments</td>
                                        <td>Approved on</td>
                                        <td>Status</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                      <td>Ravi Kumar</td>
                                      <td>cleared test</td>
                                      <td>24-03-2017</td>
                                      <td>Approved</td>
                                      <td><g:submitButton id="reqapproval"  value="Approve" name="approvehiremgr" /></td>
                                      <td><g:submitButton id="reqapproval" value="Send Mail" name="sendmailhiremgr" /></td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                        <div class="panel panel-default jdviewrow ">
                            <div class="panel-heading">
                              <h4>Offer Release</h4>
                            </div>
                            <div class="panel-body">
                              <div class="row onboard">
                                <div class="col-lg-3">
                                  <ul>
                                    <li>
                                      <label for="emptype">Type of Employment</label>
                                      <g:textField name="emptype" />
                                    </li>
                                    <li>
                                      <label for="jobfam">Job Family</label>
                                      <g:textField name="jobfam" />
                                    </li>
                                    <li>
                                      <label for="jbtitle">Job Title</label>
                                      <g:textField name="jobtitle" />
                                    </li>
                                    <li>
                                      <label for="role">Role</label>
                                      <g:textField name="role" />
                                    </li>
                                    <li>
                                      <label for="level">Level</label>
                                      <g:textField name="level" />
                                    </li>
                                    <li>
                                      <label for="country">Country</label>
                                      <g:textField name="country" />
                                    </li>
                                    <li>
                                      <label for="city">Work Location</label>
                                      <g:textField name="city" />
                                    </li>
                                  </ul>
                                </div>
                                <div class="col-lg-3">
                                  <ul>
                                    <li>
                                      <label for="expdate">Expected DoJ</label>
                                      <g:textField name="expdate" />
                                    </li>
                                    <li>
                                      <label for="currency">Currency</label>
                                      <g:currencySelect name="currency" id="offercur" value="${currency}" />
                                    </li>
                                    <li>
                                      <label for="saltype">Type of Salary</label>
                                      <g:textField name="saltype" />
                                    </li>
                                    <li>
                                      <label for="saloffer">Salary Offered(CTC)</label>
                                      <g:textField name="saloffer" />
                                    </li>
                                    <li>
                                      <label for="joinbonus">Joining Bonus</label>
                                      <g:textField name="joinbonus" />
                                    </li>
                                    <li>
                                      <label for="incentives">NP buyout</label>
                                      <g:textField name="incentives" />
                                    </li>
                                    <li>
                                      <label for="offeron">Offered On</label>
                                      <g:textField name="offeron" />
                                    </li>
                                  </ul>
                                </div>

                                <div class="col-lg-6">
                                  <ul>
                                    <li>
                                      <label for="tempoffer">Offer Templates</label>
                                      <g:select name="tempoffer" from="['Offer Templates sample 1','Offer Templates sample 2']"/>
                                    </li>
                                    <br>
                                    <li>
                                      <div class="panel panel-default sampleimgbody  jdviewrow ">
                                          <asset:image src="offersample.jpg" class="img-responsive sampleimg" />
                                      </div>
                                    </li>
                                  </ul>
                                </div>
                                <div class="row">

                                  <div class="col-lg-6" id="otherbenefits">

                                    <ul>
                                      <li>
                                        <label for="otherbenefits">Other Benefits</label>
                                        <g:textArea name="otherbenefits" value="${value}" />
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>

                              <div class="row">
                                <div class="col-lg-12">
                                  <table class="striped" id="approvetable">
                                    <tr>
                                      <td>Manager</td>
                                      <td>Role</td>
                                      <td>Sent on</td>
                                      <td>Approved on</td>
                                      <td>Status</td>
                                      <td>Comments</td>
                                      <td></td>
                                      <td></td>
                                    </tr>
                                    <tr>
                                      <td><g:select name="tempoffer" from="['Ravi Kumar']" noSelection="['':'Select Name...']"  placeholder="Hiring Manager"/></td>
                                      <td>Hiring Manager</td>
                                      <td>22-03-2017</td>
                                      <td>24-03-2017</td>
                                      <td>Approved</td>
                                      <td>cleared test</td>
                                      <td><g:submitButton id="reqapproval"  value="Approve" name="approvehiremgr" /></td>
                                      <td><g:submitButton id="reqapproval" value="Send Mail" name="sendmailhiremgr" /></td>
                                    </tr>
                                    <tr>
                                      <td><g:select name="tempoffer" from="['Kiran Reddy']" noSelection="['':'Select Name...']"  placeholder="Hiring Manager"/></td>
                                      <td>Delivery Manager</td>
                                      <td>22-03-2017</td>
                                      <td>24-03-2017</td>
                                      <td>Approved</td>
                                      <td>cleared test</td>
                                      <td><g:submitButton id="reqapproval"  value="Approve" name="approvehiremgr" /></td>
                                      <td><g:submitButton id="reqapproval" value="Send Mail" name="sendmailhiremgr" /></td>
                                    </tr>
                                    <tr>
                                      <td><g:select name="tempoffer" from="['James Lenning']" noSelection="['':'Select Name...']"  placeholder="Hiring Manager"/></td>
                                      <td>Hiring Head</td>
                                      <td>22-03-2017</td>
                                      <td>24-03-2017</td>
                                      <td>Pending</td>
                                      <td></td>
                                      <td><g:submitButton id="reqapproval" value="Approve" name="approvehiremgr" /></td>
                                      <td><g:submitButton id="reqapproval" value="Send Mail" name="sendmailhiremgr" /></td>
                                    </tr>
                                  </table>
                                </div>
                              </div>
                            </div>

                                <g:submitButton id="reqapproval" class="saves" name="releaseoffer" value="Release Offer"/>
                                <br>
                        </div>
                    </div>
                    <div class="tab-pane" id="8a">
                      <div class="panel panel-default assess">
                          <div class="panel-heading">OFFER RELEASE</div>
                          <div class="panel-body">
                            <div class="row onboard">
                              <div class="col-lg-3">
                                <ul>
                                  <li>
                                    <label for="emptype">Type of Employment</label>
                                    <g:textField name="emptype" />
                                  </li>
                                  <li>
                                    <label for="jobfam">Job Family</label>
                                    <g:textField name="jobfam" />
                                  </li>
                                  <li>
                                    <label for="jbtitle">Job Title</label>
                                    <g:textField name="jobtitle" />
                                  </li>
                                  <li>
                                    <label for="role">Role</label>
                                    <g:textField name="role" />
                                  </li>
                                  <li>
                                    <label for="level">Level</label>
                                    <g:textField name="level" />
                                  </li>
                                  <li>
                                    <label for="country">Country</label>
                                    <g:textField name="country" />
                                  </li>
                                  <li>
                                    <label for="city">Work Location</label>
                                    <g:textField name="city" />
                                  </li>
                                </ul>
                              </div>
                              <div class="col-lg-3">
                                <ul>
                                  <li>
                                    <label for="expdate">Expected DoJ</label>
                                    <g:textField name="expdate" />
                                  </li>
                                  <li>
                                    <label for="currency">Currency</label>
                                    <g:currencySelect name="currency" id="offercur" value="${currency}" />
                                  </li>
                                  <li>
                                    <label for="saltype">Type of Salary</label>
                                    <g:textField name="saltype" />
                                  </li>
                                  <li>
                                    <label for="saloffer">Salary Offered(CTC)</label>
                                    <g:textField name="saloffer" />
                                  </li>
                                  <li>
                                    <label for="joinbonus">Joining Bonus</label>
                                    <g:textField name="joinbonus" />
                                  </li>
                                  <li>
                                    <label for="incentives">Incentives</label>
                                    <g:textField name="incentives" />
                                  </li>
                                  <li>
                                    <label for="offeron">Offered On</label>
                                    <g:textField name="offeron" />
                                  </li>
                                </ul>
                              </div>
                              <div class="col-lg-6">
                                <ul>
                                  <li>
                                    <label for="tempoffer">Offer Templates</label>
                                    <g:select name="tempoffer" from="['Offer Templates sample 1','Offer Templates sample 2']"/>
                                  </li>
                                  <br>
                                  <li>
                                    <div class="panel panel-default sampleimgbody">
                                        <asset:image src="offersample.jpg" class="img-responsive sampleimg" />
                                    </div>
                                  </li>
                                  <li>
                                        <a href="#" download>Download Offerletter <i class="fa fa-download"></i></a>
                                  </li>
                                  <li>
                                        <a href="#" download>Download Revised Offerletter <i class="fa fa-download"></i></a>
                                  </li>
                                </ul>
                              </div>
                            </div>
                          </div>
                      </div>
                      <div class="panel panel-default assess">
                        <div class="panel-heading"><h4>Document Collection</h4></div>
                        <div class="panel-body">
                          <table class="striped collecttbl" id="approvetable">
                            <tr>
                              <td></td>
                              <td>Name of the Document</td>
                              <td>Upload File</td>
                              <td>Uploaded On</td>
                              <td>Reviewed Date</td>
                              <td></td>
                              <td></td>
                              <td>Status</td>
                              <td>Comments</td>
                            </tr>
                            <tr>
                              <td><i class="fa fa-plus"></i></td>
                              <td><h4>SSLC Certificate</h4></td>
                              <td><input type="file" name="docupload" value="sslc.pdf"/></td>
                              <td>21-03-2017</td>
                              <td>23-03-2017</td>
                              <td><g:submitButton name="uploaddoc" id="reqapproval" value="Upload"/></td>
                              <td><g:submitButton name="approvedoc" id="reqapproval" value="Approve"/></td>
                              <td>Verified</td>
                              <td>Cleared</td>
                              <td><i class="fa fa-eye"></i></td>
                              <td><i class="fa fa-download"></i></td>
                            </tr>
                            <tr>
                              <td><i class="fa fa-plus"></i></td>
                              <td><h4>PUC Certificate</h4></td>
                              <td><input type="file" name="docupload" value="sslc.pdf"/></td>
                              <td>21-03-2017</td>
                              <td>23-03-2017</td>
                              <td><g:submitButton name="uploaddoc" id="reqapproval" value="Upload"/></td>
                              <td><g:submitButton name="approvedoc" id="reqapproval" value="Approve"/></td>
                              <td>Verified</td>
                              <td>Cleared</td>
                              <td><i class="fa fa-eye"></i></td>
                              <td><i class="fa fa-download"></i></td>
                            </tr>
                          </table>
                          <div class="row">
                            <div class="col-lg-12 text-left saves">
                              <g:submitButton id="reqapproval" name="savedoc" value="Save Documents"/>
                              <g:submitButton id="reqapproval" name="approvejoin" value="Approve"/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="panel panel-default assess">
                        <div class="panel-heading"><h4>POFU</h4></div>
                        <div class="panel-heading">
                          <ul id="pofuhead" class="text-right">
                            <li><p>Offer Confirmed: <span>Yes</span></p></li>
                            <li><p>Confirmed Date: <span>25-03-2017</p></li>
                            <li><p>Expected DoJ: <span>10-05-2017</p></li>
                          </ul>
                        </div>
                        <div class="panel-body">
                          <table class="striped collecttbl" id="approvetable">
                            <tr>
                              <td>Contacted On</td>
                              <td>Called By</td>
                              <td>Comments by Candidate</td>
                              <td>Comments by POFU</td>
                              <td>Document Shared</td>
                              <td>Likely to Join</td>
                              <td>Alert to Recruiter</td>
                            </tr>
                            <tr>
                              <td>29-03-2017</td>
                              <td>Kiran Reddy</td>
                              <td>Lorem ipsum dolor sit amet.</td>
                              <td>Lorem ipsum dolor sit amet.</td>
                              <td><input type="file" name="sharedoc" value=""/></td>
                              <td><g:select from="['Yellow','Red','Green']" name="status"/></td>
                              <td><g:submitButton name="alert" id="reqapproval" value="Alert Now"/></td>
                            </tr>
                          </table>
                              <g:submitButton class="saves" id="reqapproval" name="approvejoin" value="Approve to Onboard"/>
                          </div>

                        </div>
                      </div>
                  </div>
                  </div>
              </div>


  <script>
    $(document).ready(function(){
      $('[data-toggle="tooltip"]').tooltip();
    });
  </script>
        <script>
  function openNav() {
      document.getElementById("mySidenav").style.width = "10.95%";
      document.getElementById("main").style.marginLeft = "11.35%";
      $('.panebody').animate({width:'72%',marginTop:"1%",left:"-2%"},300);
      $('.closebtn').css({visibility: 'visible'});
      $('#open').css({visibility: 'hidden'});
  }

  function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      document.getElementById("main").style.marginLeft= "-0.2%";
      $('.panebody').animate({width:'83%',marginTop:"0%",left:"-6%"},300);
      $('.figbdy').animate({marginTop:'-3.5%'},300);
      $('#open').css({visibility: 'visible'});
      $('.closebtn').css({visibility: 'hidden'});
  }
  </script>
    </body>
</html>
