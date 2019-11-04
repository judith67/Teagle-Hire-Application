
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'clientAdmin.label', default: 'ClientAdmin')}" />
        <title><g:message code="Client Admin" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
    </head>
    <body>
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
        <li><asset:image id="profile" src="user.png" /></li>
        <li>
            <p>Ravi Kumar<br><span>${new Date()}</span><p>
      </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <!--Navigation Ends here -->
    <div id="mySidenav" style="width: 180px;" class="sidenav">
        <a href="#">Dashboard</a>
        <a href="../employeeRef/index">Employee Referrals</a>
        <a href="../leaderDashboard/index">Leader Dashboard</a>
        <a href="../partners/index">Partners</a>
        <a href="../sourcingTeam/index">Sourcing Team</a>
        <a href="./create">Admin</a>
        <a href="#">Help</a>
    </div>
    <div id="graphbar">
      <ul>
        <li>Recruiter Performance</li>
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
      <div id="create-clientAdmin" class="content scaffold-create" role="main">
          <div class="panel panel-default adminpanel" style="width: 70%; margin-left:0%; margin-top: 1%;">
            <div class="panel-heading" style="padding: 8px;padding-top: 15px;padding-bottom: 0px; padding-left: 2%;margin: 0;">
            <h4>Client Admin</h4>
            </div>
            <div class="panel-body"style="width: 100% !important;">
            <div class="row jdin" style="margin:0px; width: 100%; box-shadow: 1px 2px 2px #ccc">
              <div class="row">
                    <g:form resource="${this.resumeUpload}" method="POST">
              </div>
                <div class="row">
                  <div class="col-lg-8 text-left">
                    <p style="font-size: 12px; font-weight: bold;">User Management</p>
                  </div>
                  <div class="col-lg-2">
                    <g:link action="add" controller="ClientAdmin" id="create" class="btn btn-info btnchange" params="" url="http://localhost:8080/clientAdmin/create" absolute="" base="http://localhost:8080/clientAdmin/create">Add</g:link>
                  </div>
                  <div class="col-lg-2">
                    <g:link action="edit" controller="ClientAdmin" id="edit" class="btn btn-info btnchange" params="" url="http://localhost:8080/clientAdmin/edit" absolute="" base="http://localhost:8080/clientAdmin/edit">Edit</g:link>
                  </div>
                </div>
                      <div class="row fields">
                    <div class="col-md-6">
                      <fieldset class="form">
                          <label for="name">Name<span id="mandatory"> *</span></label>
                          <g:textField name="name" required="true" value="${name}" />
                      </fieldset>
                      </div>
                      <div class="col-lg-6 field-b">
                          <fieldset class="form">
                              <label for="useremail">Email<span id="mandatory"> *</span></label>
                              <g:textField name="useremail" required="true" value="${useremail}" />
                          </fieldset>
                      </div>
                  </div>
                  <div class="row space  fields">
                    <div class="col-lg-6">
                    <fieldset class="form">
                        <label for="userphone">Phone<span id="mandatory"> *</span></label>
                        <g:textField name="userphone" required="true" value="${userphone}" />
                    </fieldset>
                    </div>
                      <div class="col-lg-6 field-b">
                        <fieldset class="form">
                          <label for="usercountry">Country<span id="mandatory"> *</span></label>
                          <g:countrySelect  name="usercountry" value="${usercountry}" noSelection="['':'-Choose your country-']" />
                      </fieldset>
                    </div>
                  </div>
                  <div class="row space  fields">
                    <div class="col-lg-6">
                      <fieldset class="form">
                          <label for="usercity">City</label>
                          <g:textField name="usercity" value="${usercity}" />
                      </fieldset>
                    </div>
                      <div class="col-lg-6 field-b">
                        <fieldset class="form">
                            <label for="usercompany">Company</label>
                            <g:textField name="usercompany" value="${usercompany}" />
                        </fieldset>
                      </div>
                  </div>
                  <div class="row space  fields">
                    <div class="col-lg-6">
                      <fieldset class="form">
                          <label for="partnertype">Type of Partner</label>
                          <g:textField name="partnertype" checked="true" value="${partnertype}" />
                      </fieldset>
                    </div>
                    <div class="col-lg-6 field-b">
                    <fieldset class="form">
                        <label for="username">Username</label>
                        <g:textField name="username" value="${username}"/>
                    </fieldset>
                    </div>
                  </div>
                  <div class="row space fields">
                    <div class="col-lg-6">
                      <fieldset class="form">
                          <label for="userroles">Roles</label>
                          <g:textField name="userroles" value="${userroles}"/>
                      </fieldset>
                    </div>
                      <div class="col-lg-6 field-b">
                        <fieldset class="form">
                            <label for="userpass">Password</label>
                            <g:textField name="userpass" value="${userpass}"/>
                        </fieldset>
                        </div>
                      </div>
                      <div class="row space fields" style="margin-top:2%; margin-bottom:5%;">
                          <div class="col-lg-12 field-b">
                            <fieldset class="form">
                                <label for="rights" style="margin-right:5%;">Assign Rights</label>
                                <g:checkBox id="rights" name="rights" value="Read" />
                                <label for="rights">Read</label>
                                <g:checkBox id="rights" name="rights" value="Add" />
                                <label for="rights">Add</label>
                                <g:checkBox id="rights" name="rights" value="Edit" />
                                <label for="rights">Edit</label>
                                <g:checkBox id="rights" name="rights" value="Delete" />
                                <label for="rights">Delete</label>
                            </fieldset>
                          </div>
                      </div>
                      <g:submitButton name="create" value="Save" class="btn btn-info" style="width:7%; border-radius: 0px;margin-top: -5%; margin-left: 79.5%; z-index: 99999;"/>

                      </div>
                  </div>
                </g:form>
              </div>
            </div>

            <div id="exTab3" class="container">
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
                      <table id="clientAdmin" class="table-striped">
                          <thead>
                          <tr>
                            <th>Name of Recruiter</th>
                            <th>Country</th>
                            <th>City</th>
                            <th>Manager</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Status</th>
                          </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                          </tbody>
                      </table>
                    </div>
                    <div class="tab-pane" id="2b">
                      <table id="clientAdmin" class="table-striped">
                          <thead>
                          <tr>
                            <th>Name of Recruiter</th>
                            <th>Country</th>
                            <th>City</th>
                            <th>Manager</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Status</th>
                          </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                          </tbody>
                      </table>
                    </div>
                    <div class="tab-pane" id="3b">
                      <table id="clientAdmin" class="table-striped">
                          <thead>
                          <tr>
                            <th>Name of Recruiter</th>
                            <th>Country</th>
                            <th>City</th>
                            <th>Manager</th>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Status</th>
                          </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                            <tr>
                              <td>Ravi Verma</td>
                              <td>India</td>
                              <td>Bangalore</td>
                              <td>Rakesh Kumar</td>
                              <td>ravi6772</td>
                              <td>ravi!123</td>
                              <td><g:select from="['Active','Inactive']" name="adminStatus" noSelection="['':'-Select Status-']"/></td>
                            </tr>
                          </tbody>
                      </table>
                    </div>
                  </div>
              </div>



            <script>
function openNav() {
    document.getElementById("mySidenav").style.width = "13%";
}
</script>

    </body>
</html>
