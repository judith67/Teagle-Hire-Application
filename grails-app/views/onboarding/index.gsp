<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'onboarding.label', default: 'Onboarding')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
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
            <a href="../clientAdmin/create">Admin</a>
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
      <div class="panel panel-default assess figbdy">
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
