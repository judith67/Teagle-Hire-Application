<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interviewAssesment.label', default: 'InterviewAssesment')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jdview.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
        <a href="#list-interviewAssesment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
    <div class="panel panel-default assess jdviewrow newrow">
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
    <div class="panel panel-default assess  jdviewrow newrow">
        <div class="panel-heading">
           Interview Rating & Comments
        <span>
            <g:select from="['Recruiter','Tech 1','Tech 2', 'Tech 3', 'Client', 'HR']" name="interviewer"></g:select>
        </span>
        </div>
        <div class="panel-footer foot">
            <div class="row" style="margin-left: 1%;">
                <div class="col-lg-12">
                    <div class="row details space" style="padding-top: 5px;">
                        <div class="col-lg-2 text-left">
                            <h5>Primary Skills -
                                <span>50%</span></h5>
                            <p>Java</p>
                            <p>Spring</p>
                            <p>MySQL</p>
                        </div>
                        <div class="col-lg-2 text-left">
                            <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" id="percnt" name="percnt">
                        </div>
                        <div class="col-lg-2 text-left">
                             <h5>Secondary Skills -
                                 <span>30%</span></h5>
                             <p>Grails</p>
                             <p>Adobe Designing tools</p>
                             <p>GGTS</p>
                        </div>
                        <div class="col-lg-2 text-left">
                            <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" id="percnt" name="percnt">
                        </div>

                        <div class="col-lg-2 text-left ">
                            <h5>Desired Skills -
                                <span>20%</span></h5>
                            <p>Treasury Mgmt</p>
                            <p>Equities Speculation</p>
                            <p>Mortgage</p>
                        </div>
                        <div class="col-lg-2 text-left">
                            <input type="text" value="" data-toggle="tooltip" title="Enter Percentage Here" id="percnt" name="percnt">
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
    <div class="panel panel-default assess  jdviewrow  newrow">
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

    <div class="panel panel-default assess" style="margin-right:1%;">
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
                  <div class="panel panel-default sampleimgbody">
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
    <script>
        $(document).ready(function(){
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
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
