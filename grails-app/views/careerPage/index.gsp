<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'careerpage.label', default: 'CareerPage')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'career.css')}" type="text/css">
        <script src="https://use.fontawesome.com/88b890d10a.js"></script>
    </head>
    <body>
      <div class="banner">
        <p>Careers</p>
      </div>
      <div class="row">
        <div class="col-lg-6 jobsearchcol">
            <div class="input-group jobsearch">
              <label for="searchtxt" style="color: #00ace2;">Search by</label>
              <input type="text" name="searchtxt" class="form-control" placeholder="keyword,skills,city..">
              <span class="input-group-btn">
                <button class="btn btn-default searchbtn" type="button"><i class="fa fa-search"></i></button>
              </span>
            </div>
            <g:submitButton name="submit" id="submita" value="Search" />
        </div>
        <div class="col-lg-6 searchb">
          <label for="function" style="color: #00ace2;">Search by filters</label><br>
          <ul>
            <li>
                <g:select from="['IT','ITO','Sales']" name="function" value="" noSelection="['':'Functions']" />
            </li>
            <li>
              <g:countrySelect name="country" value="${country}" noSelection="['':'Country']" />
            </li>
            <li>
              <g:select from="['Bangalore','Hyderabad','Gurgaon']" name="city" value="" noSelection="['':'City']" />
            </li>
          </ul>
          <g:submitButton name="submit" value="Search" />
        </div>
      </div>
      <div class="row secondrow">
        <div class="col-lg-6">
          <div class="panel panel-default assess careerpanel">
          <!-- Default panel contents -->
          <div class="panel-heading">
            <h4>Open Positions</h4>
          </div>

          <table class="striped" id="approvetable">
            <tr id="head">
              <td></td>
              <td>Job #</td>
              <td>Job Title</td>
              <td>Country</td>
              <td>Exp.</td>
              <td>Level</td>
              <td>City</td>
              <td>Type</td>
              <td>Duration</td>
            </tr>
            <g:each in="${jobd}" var="jobs">
            <tr>
              <td><input type="checkbox" value="${jobs.title}"/></td>
              <td>${jobs.title}</td>
              <td>${jobs.jobtitle}</td>
              <td>${jobs.country}</td>
              <td>${jobs.function}</td>
              <td>${jobs.nopos}</td>
              <td>${jobs.state}</td>
              <td>${jobs.joblevel}</td>
              <td>${jobs.city}</td>
              </tr>

        </g:each>
          </table>
        </div>

        <div class="row">
          <div class="col-lg-12 resup">
            <input type="file" name="uploadResume" value="" /><br>
            <g:submitButton name="submitresume" value="Upload Resume" /> <br>
            <span></span>
          </div>
        </div>
        </div>
        <div class="col-lg-6">
          <div class="panel assess">
            <div class="panel-heading"><h4>Job Description</h4></div>
            <div class="panel-body descbody">
              <p>
                <b>Primary Skills:</b> Core Java <br>

<b>Secondary Skills:</b>
Spring Boot, Angular 2 <br>
<br>
<b>Job Description:</b>
Key skills required for the job are:
<br><br>
<b>Core Java-L3 (Primary)
Angular 2-L3
Spring Boot-L3</b> <br>
As a Senior Architect, you are responsible for providing technical leadership to medium size/complexity/order-value enterprise scale projects/solutions. You are expected have depth of knowledge of specified multiple technological areas, which includes knowledge of applicable processes, methodologies, standards, products and frameworks. You would be responsible for defining and documenting architecture, capturing and documenting non-functional (architectural) requirements, preparing estimates and defining technical solutions to proposals (RFPs). You should provide technical leadership to project team(s) to perform design to deployment related activities, provide guidance, perform reviews, prevent and resolve technical issues. You are required to guide team of Architects, who would be responsible specific architectural area or part of the architecture/solution. You need to collaborate with multiple teams from wipro/customer to arrive at technical and tactical decisions.
 <br><br>
<b>Minimum work experience:</b> 10 Years
 <br><br>
<b>Roles & Responsibilities:</b>
Minimum Experience Required: Mandatory Skills: Core Java J2EE Architecting, Java-J2EE, Architecture Frameworks, Architecting, Java - Architecting Desirable Skills: Angular 2, Spring Boot Language Skills: English Language
              </p>
            </div>
          </div>
        </div>
      </div>
    </body>
</html>
