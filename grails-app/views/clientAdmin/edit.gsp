<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'clientAdmin.label', default: 'ClientAdmin')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-clientAdmin" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-clientAdmin" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.clientAdmin}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.clientAdmin}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.clientAdmin}" method="PUT">
                <g:hiddenField name="version" value="${this.clientAdmin?.version}" />
                <fieldset class="form">
                  <div class="row jdin jdin-b">
                    <div class="row">
                          <g:form resource="${this.resumeUpload}" method="POST">
                    </div>
                      <div class="row">
                        <div class="col-lg-8 text-left">
                          <p style="font-size: 18px;">User Management</p>
                        </div>
                        <div class="col-lg-2">
                            <g:submitButton name="create" value="Add" class="btn btn-info" style="width:40%; margin-left: 60%;"/>
                        </div>
                        <div class="col-lg-2">
                            <g:submitButton name="create" value="Edit"  class="btn btn-info" style="width:40%;"/>
                        </div>
                      </div>
                            <div class="row fields">
                          <div class="col-md-6">
                            <fieldset class="form">
                                <label for="name">Full Name<span id="mandatory"> *</span></label>
                                <g:each var="names" in="${name}">
                                <g:select from="${name}" name="name" required="true" value="${name}" />
                                </g:each>
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
                                <div class="col-lg-6 field-b">
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
                            </div>

                        </div>
                      </g:form>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
