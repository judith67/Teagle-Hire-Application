<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'interviewSchedule.label', default: 'InterviewSchedule')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:javascript src="menu.js" />
    </head>
    <body>
        <a href="#list-interviewSchedule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-interviewSchedule" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${interviewScheduleList}" />

            <div class="pagination">
                <g:paginate total="${interviewScheduleCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
