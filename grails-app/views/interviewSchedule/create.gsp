<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interviewSchedule.label', default: 'InterviewSchedule')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'schedule.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
        <div id="create-interviewSchedule" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.interviewSchedule}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.interviewSchedule}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
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

    </body>
</html>
