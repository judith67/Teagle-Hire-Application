<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'dashboard.label', default: 'Dashboard')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'stylesheet', file: 'jobs.css')}" type="text/css">
    </head>
    <body>
        <a href="#list-dashboard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

          // Load the Visualization API and the piechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

      // Create the data table.
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Topping');
      data.addColumn('number', 'Slices');
      data.addRows([
        ['Social', 30],
        ['CareerPage', 15],
        ['Vendors', 40],
        ['ER', 20],
        ['Head Hunting', 15],
        ['Portals',100],
        ['Rejoinee',5]
      ]);

// Set chart options
      var options = {'title':'Source'};

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
    </script>
  </head>

  <body>
<!--Div that will hold the pie chart-->
    <div id="chart_div" style="width:400; height:300"></div>
  </body>
</html>
    </body>
</html>
