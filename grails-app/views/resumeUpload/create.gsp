<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'resumeUpload.label', default: 'ResumeUpload')}" />
        <title><g:message code="Resume Upload" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'trial.css')}" type="text/css">
    </head>
    <body>
        <div id="create-resumeUpload" class="content scaffold-create" role="main">
            <h1 style="margin-bottom: 2%;">Upload Resumes</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.resumeUpload}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.resumeUpload}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div class="row jdin jdin-b">
              <div class="row">
                    <g:form resource="${this.resumeUpload}" method="POST">
                    <div id="jdautofilldiv">
                      <input type="file" name="myFile" id="myUploadb" tooltip="Upload file"/>
                    </div>
              </div>
                      <div class="row fields">
                    <div class="col-md-6">
                    <fieldset class="form">
                        <label for="candname">Candidate Name<span id="mandatory"> *</span></label>
                        <g:textField name="candname" required="true" value="${candname}" />
                    </fieldset>
                    </div>
                    <div class="col-md-6 field-b">
                        <fieldset class="form">
                            <label for="fathername">Father's Name<span id="mandatory"> *</span></label>
                            <g:textField name="fathername" required="true" value="${fathername}" />
                        </fieldset>
                    </div>
                </div>
                <div class="row space  fields">
                  <div class="col-md-6">
                  <fieldset class="form">
                      <label for="phone">Phone No.<span id="mandatory"> *</span></label>
                      <g:textField name="phone" required="true" value="${phone}" />
                  </fieldset>
                  </div>
                    <div class="col-md-6 field-b">
                      <fieldset class="form">
                        <label for="email">Email<span id="mandatory"> *</span></label>
                        <g:textField name="email" value="${email}" required="true"/>
                    </fieldset>
                  </div>
                </div>
                <div class="row space  fields">
                  <div class="col-md-6">
                    <fieldset class="form">
                        <label for="city">City</label>
                        <g:textField name="city" value="${city}" />
                    </fieldset>
                  </div>
                    <div class="col-md-6 field-b">
                      <fieldset class="form">
                          <label for="state">State</label>
                          <g:textField name="state" value="${state}" />
                      </fieldset>
                    </div>
                </div>
                <div class="row space  fields">
                  <div class="col-md-6">
                    <fieldset class="form">
                        <label for="aadhaar">Aadhaar No.</label>
                        <g:textField name="aadhaar" value="${aadhaar}" />
                    </fieldset>
                  </div>

                  <div class="col-md-6 field-b">
                    <fieldset class="form">
                        <label for="pan">PAN No.</label>
                        <g:textField name="pan" value="${pan}" />
                    </fieldset>
                  </div>
                </div>
                <div class="row space fields">
                  <div class="col-md-6">
                    <fieldset class="form">
                        <label for="resumetitle">Resume Title</label>
                        <g:textField name="resumetitle" value="${resumetitle}"/>
                    </fieldset>
                  </div>
                    <div class="col-md-6 field-b">
                      <fieldset class="form">
                          <label for="year">Years of Experience <span id="mandatory"> *</span></label><br>
                          <g:textField name="year" required="true" value="${year}" style="width:40%;"/><span id="days">Years</span>
                          <g:textField name="month" required="true" value="${month}" style="width:40%;"/><span id="days">Months</span>
                      </fieldset>
                    </div>
                </div>
                <div class="row space fields">
                  <div class="col-md-6">
                    <fieldset class="form">
                        <label for="np">Notice Period <span id="days">(days)</span></label>
                        <g:textField name="np" value="${np}" />
                    </fieldset>
                  </div>

                  <div class="col-md-6 field-b">
                    <fieldset class="form">
                        <label for="relocation">Relocation</label>
                        <g:textField name="relocation" value="${relocation}" />
                    </fieldset>
                    </div>
                  </div>

                  <div class="row space fields">
                    <div class="col-md-6"  style="margin-bottom:5%;">
                      <fieldset class="form">
                      <br>
                          <label for="photo">Upload Photo</label>
                          <input type="file" name="photo" />
                      </fieldset>
                    </div>

                    <div class="col-md-6 field-b" style="margin-top:5%;margin-bottom:5%;">
                      <fieldset class="form">
                          <label for="relocation">Upload Resume<span id="mandatory"> *</span></label>
                          <input  required="true" type="file" name="featuredImageFile" />
                          <em>doc, docx, rtf, pdf - 2MB max
                            Teagle preferred CV format - docx file</em>
                      </fieldset>
                      </div>
                    </div>
                    <div class="row space fields">
                      <div class="col-md-12 text-center"  style="margin-bottom:5%;">
                        <fieldset class="form">
                          <p>
                            <input type="checkbox" required="true" name="accept" value="" />
                            <span id="terms">&nbsp;I read and agreed to the Terms and Conditions of HRinzights Technologies Private Limited.</span>
                          </p>
                        </fieldset>
                      </div>
                      </div>
                    <fieldset class="btn btn-primary buttons">
                        <g:submitButton name="create" value="Save" style="color: #fff;"/>
                    </fieldset>

                  </div>
                </g:form>
            </div>
    </body>
</html>
