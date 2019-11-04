<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'hiringManager.label', default: 'HiringManager')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
        <a href="#list-hiringManager" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
              <a href="./index">Hiring Manager</a>
              <a href="../sourcingTeam/index">Sourcing Team</a>
              <a href="../clientAdmin/create">Admin</a>
              <a href="#">Help</a>

            </div>

            <div id="main" style="left: 0%;">
              <a href="javascript:void(0)" style="border-bottom: 0px;" class="closebtn" onclick="closeNav()"><asset:image src="arrowclose.svg" /></a>
              <p style="font-size:30px;cursor:pointer;" id="open" onclick="openNav()"><asset:image src="arrow.svg" /></p>
            </div>
            <div class="row rowb jobtbl">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="interview">

                  <span>Open Positions <span id="positioncounter"><span>123</span>/347</span></span>

                  <div class="row recentprofiles">
                    <div class="col-lg-2 text-left"><a href="#">Tech support, Tech support</a> <a href="" data-toggle="tooltip" title="Download"><i class="fa fa-download"></i></a></div>
                    <div class="col-lg-1 jddrop">
                          <div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
                              <div class="dropdown">
                                  <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-info" data-target="#" href="/page.html">
                                    Search by Client <span class="caret"></span>
                                  </a>
                              <ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
                                    <li class="dropdown-submenu">
                                      <a tabindex="-1" id="client" href="#">Accenture</a>
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
                                      <a tabindex="-1" id="client" href="#">TCS</a>
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
                  <table class="table-striped">
                    <thead>
                        <tr id="head">
                          <th><input type="checkbox" /></td>
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
              <div class="row rowb rowc jobtbl">
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">Not Interested</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">Match</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">Contacted</p></td>
                          <td style="text-align: center;">Tech 2</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">Not Interested</p></td>
                          <td style="text-align: center;">Tech 2</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">Not Interested</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">${jobs.resumes.resumestatus}</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">Contacted</p></td>
                          <td style="text-align: center;">Match</td>
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
                          <td>${jobs.resumes.relocation}</td>
                          <td><p class="interest">${jobs.resumes.interest}</p></td>
                          <td style="text-align: center;">Tech 2</td>
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
        <script>
  function openNav() {
      document.getElementById("mySidenav").style.width = "11%";
      document.getElementById("main").style.marginLeft = "11%";
      $('.jobtbl').animate({width:'73%',left:"0%",marginTop:"0%"},200);
      $('.closebtn').css({visibility: 'visible'});
      $('#open').css({visibility: 'hidden'});
  }

  function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      document.getElementById("main").style.marginLeft= "0";
      $('.jobtbl').animate({width:'83%',left:"-7%",top:"-20%"},200);
      $('.figbdy').animate({marginTop:'-3.5%'},200);
      $('#open').css({visibility: 'visible'});
      $('.closebtn').css({visibility: 'hidden'});
  }
  </script>
    </body>
</html>
