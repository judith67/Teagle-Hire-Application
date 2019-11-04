<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'jobDescription.label', default: 'JobDescription')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'trial.css')}" type="text/css">
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'stylesheet', file: 'wmd.css')}"/>
    </head>
    <body>

        <div id="create-jobDescription" class="content scaffold-create" role="main">

            <h1 style="margin-bottom: 2%;">Job Order Details</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.jobDescription}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.jobDescription}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>

            </g:hasErrors>
                <div class="row jdin">
                  <div class="row">
                        <g:form resource="${this.jobDescription}" method="POST">

                        <div id="jdautofilldiv">
                          <label for="jdautofill">Select a JD to Autofill</label>
                          <g:select from="['#P201 - Web Development, J2EE','#P304 - .net, Groovy']" name="jdautofill" />
                          <input type="file" name="myFile" id="myUpload" tooltip="Upload file"/>
                        </div>
                  </div>
                    <div class="row fields">
                  <div class="col-md-5">
                  <fieldset class="form">
                      <label for="title">Client<span id="mandatory"> *</span></label>
                      <g:select name="client" from="['a', 'b', 'c']" required="true" value="${client}" />
                  </fieldset>
                  </div>
                  <div class="col-md-4 field-b">
                      <fieldset class="form">
                          <label for="postype">Position type<span id="mandatory"> *</span></label>
                          <g:textField name="postype" required="true" value="${postype}" />
                      </fieldset>
                  </div>

                    <div class="col-md-3">
                      <fieldset class="form">
                          <label for="country">Country<span id="mandatory"> *</span></label>
                          <g:countrySelect name="country" required="true" value="${country}" />
                      </fieldset>
                    </div>
              </div>
              <div class="row space  fields">
                <div class="col-md-5">
                <fieldset class="form">
                    <label for="title">Project Title<span id="mandatory"> *</span></label>
                    <g:textField name="title" required="true" value="${title}" />
                </fieldset>
                </div>
                  <div class="col-md-4 field-b">
                    <fieldset class="form">
                      <label for="nopos">Number of Positions<span id="mandatory"> *</span></label>
                      <g:textField name="nopos" required="true" value="${nopos}" />
                  </fieldset>
                </div>

                  <div class="col-md-3">
                  </div>
              </div>
              <div class="row space  fields">
                <div class="col-md-5">
                </div>
                  <div class="col-md-4 field-b">
                    <fieldset class="form">
                        <label for="joblevel">Job Level<span id="mandatory"> *</span></label>
                        <g:textField name="joblevel" required="true" value="${joblevel}" />
                    </fieldset>
                  </div>

                    <div class="col-md-3">
                      <fieldset class="form">
                          <label for="city">City</label>
                          <g:textField name="city" value="${city}" />
                      </fieldset>
                    </div>
              </div>
              <div class="row space  fields">
                <div class="col-md-5">
                <fieldset class="form">
                    <label for="function">Function<span id="mandatory"> *</span></label>
                    <g:textField name="function" required="true" value="${function}" />
                </fieldset>
                </div>

                <div class="col-md-4 field-b">
                  <fieldset class="form">
                      <label for="jobtitle">Job Title</label>
                      <g:textField name="jobtitle" value="${jobtitle}" />
                  </fieldset>
                </div>

                <div class="col-md-3">
                  <fieldset class="form">
                      <label for="duration">Duration(months)</label>
                      <g:textField type="number" name="duration" value="${duration}" />
                  </fieldset>
                </div>
              </div>
              <div class="row space fields">
                <div class="col-md-5">
                  <fieldset class="form">
                      <label for="primaryskills">Primary Skills<span id="mandatory"> *</span></label>
                      <g:textField name="primaryskills" required="true" value=""/>
                  </fieldset>
                </div>
                  <div class="col-md-4 field-b">
                    <fieldset class="form">
                        <label for="roles">Roles</label>
                        <g:textField name="roles" value="${roles}" />
                    </fieldset>
                  </div>
                  <div class="col-md-3">
                    <fieldset class="form">
                      <label for="salary">Salary(CTC - Min.)</label>
                      <g:textField type="number" name="salary" value="${salary}" />
                  </fieldset>
                </div>
              </div>
              <div class="row space fields">
                <div class="col-md-5">
                  <fieldset class="form">
                      <label for="secondskills">Secondary Skills<span id="mandatory"> *</span></label>
                      <g:textField name="secondskills" required="true" value="" />
                  </fieldset>
                </div>

                <div class="col-md-4 field-b">
                  <fieldset class="form">
                      <label for="skillexp">Primary Skill Experience<span id="mandatory"> *</span></label>
                      <g:textField name="skillexp" required="true" value="" />
                  </fieldset>
                </div>

                  <div class="col-md-3">
                    <fieldset class="form">
                      <label for="salary">Salary(CTC - Max.)</label>
                      <g:textField type="number" name="salary" value="${salary}" />
                  </fieldset>
                </div>
                </div>
                <div class="row space fields">
                <div class="col-md-5">
                  <fieldset class="form">
                      <label for="desirableskills">Desirable Skills</label>
                      <g:textField name="desirableskills" value="" />
                  </fieldset>
                </div>

                <div class="col-md-4 field-b">
                  <fieldset class="form">
                      <label for="overallworkexp">Overall Work Experience</label>
                      <g:textField name="overallworkexp" value="" />
                  </fieldset>
                </div>


                    <div class="col-md-3">
                    <fieldset class="form">
                        <label for="billable">Billable(y/n)</label>
                        <g:select from="['yes','no']" name="billable" value="${billable}" />
                    </fieldset>
                  </div>

              </div>
              <div class="row space fields">
                <div class="col-md-5">
                  <fieldset class="form">
                      <label for="softskills">Soft Skills</label>
                      <g:textField name="softskills" value="" />
                  </fieldset>
                </div>
                <div class="col-md-4 field-b">
                    <fieldset class="form">
                        <label for="qualification">Qualification</label>
                        <g:select from="['Under Graduate','Graduate','Post Graduate']" name="qualification" value="${qualification}" />
                    </fieldset>
                </div>
                    <div class="col-md-3">
                      <fieldset class="form">
                          <label for="billing">Billing Rate:</label>
                          <g:textField type="number" name="billing" value="${billing}" />
                      </fieldset>
                    </div>
                </div>
              <div class="row space  fields">
                <div class="col-md-12">
                <fieldset class="form">
                    <label for="jdtext">Job Description</label>
                    <g:textArea id="notes" class="jdtext" name="jdtext" value="${jdtext}"></g:textArea>
                </fieldset>

                  <fieldset class="buttons" style="margin-top: 5%; width: 8%;color: #fff !important;border-radius: 3px;">
                      <g:submitButton name="create" value="Create" style="color: #fff !important;" />
                  </fieldset>
                <br />
                </div>
              </div>

              </div>
            </g:form>
        </div>
        <script type="text/javascript" src="jquery.wmd.min.js"></script>
        <script type="text/javascript">
            $().ready(function() {
               $("#notes").wmd();
            });
        </script>
    </body>
</html>
