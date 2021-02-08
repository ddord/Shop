<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testGraph.aspx.cs" Inherits="WebApplication1.testGraph" %>

<%--  test1 --%>
<%--
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <base href="http://demos.telerik.com/kendo-ui/radar-charts/radar-area">
    <style>html { font-size: 14px; font-family: Arial, Helvetica, sans-serif; }</style>
    <title></title>
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.1.223/styles/kendo.common-material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.1.223/styles/kendo.material.min.css" />
    <link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.1.223/styles/kendo.material.mobile.min.css" />

    <script src="https://kendo.cdn.telerik.com/2017.1.223/js/jquery.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2017.1.223/js/kendo.all.min.js"></script>
</head>
<body>
<div id="example">
    <div class="demo-section k-content wide">
    
  <input type="checkbox" id="chkproperty" class="k-checkbox" checked="checked" name="checkAddress" onclick="toggleLiveData(this)">
  <label class="k-checkbox-label" for="chkproperty"><b>Display Only Live Data</b></label>
          
   <h4 style="margin-top: 2em;">Live Data Window Size</h4>
            <select id="size" style="width: 100%;" >
                <option value="5" >S - 5 item</option>
                <option value="10" >M - 10 item</option>
                <option value="50" >L - 50 item</option>
                <option value="100" >XL - 100 item</option>
            </select>
            
        <div id="chart"></div>
        
     
    </div>  
    <script>
     //Variable to show Live Live Data
   var showLiveData = true;
   
    //Variable to show Live Live Data
   var windowSize = 5;
     
  function toggleLiveData(checkbox){  
      showLiveData = checkbox.checked; 
}
  
   function createChart() {
   
   // create DropDownList from select HTML element
     $("#size").kendoDropDownList(
     {
      change: onChange
     });
        
function onChange() {
   var size = $("#size").data("kendoDropDownList");
  //  alert('Window Size updated to : //'+size.value());
    
    windowSize = size.value();
                    };
     
    var internetUsers = [{
    
     "year": "2005",
     "value": 0
 }, {
    
     "year": "2006",
     "value": 0
 }, {
   
     "year": "2007",
     "value": 0
 }, {
     "year": "2008",
     "value": 0
 }, {
   
     "year": "2009",
     "value": 0
 }];


 $("#chart").kendoChart({
     theme: $(document).data("kendoSkin") || "default",    
     renderAs: "canvas",
     dataSource: {
         data: internetUsers
     },
     title: {
         text: "Power Usage"
     },
     legend: {
         position: "bottom"
     },
     seriesDefaults: {
         type: "area"
     },
     series: [{
        type: "area",
    //line: {
    //  color: "red",
    //  opacity: 0.5,
    //  width: 1,
    //  style: "step"
    //},
         field: "value",
         name: "Power (Watts)"
       
       
     }],
     valueAxis: {
     
       majorGridLines: {
                        visible: false
                    },
         labels: {
             format: "{0}"
         }
     },
     categoryAxis: {
     
       majorGridLines: {
                        visible: false
                    },

         line: {
                    visible: false
                },

         field: "year",
          labels: {
            rotation: "auto"
         },
          visible: false,
     },
       pannable: {
                    lock: "y"
                },
                zoomable: {
                    mousewheel: {
                        lock: "y"
                    },
                    selection: {
                        lock: "y"
                    }
                },
                 tooltip: {
                    visible: true,
                    template: " #= value # w"
                },
       transitions: false
 });
 

       
setInterval(function() {
  // Update Chart;
 var randomnumber = Math.floor(Math.random() * (100 - 20 + 1)) + 20;
 
 
   
   //add new data  
$("#chart").data("kendoChart").dataSource.add({
     "year": "2010",
     "value": randomnumber
 });
}, 400);
    }
        $(document).ready(
        createChart);
        $(document).bind("kendo:skinChange", createChart);
    </script>
</div>


</body>
</html>--%>





<%--  test2 --%>

<!DOCTYPE html>
<html>
  <head>
    <title>Chart.js Redraw Example</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="chart.min.js"></script>
    <script type="text/javascript" charset="utf-8">

      window.chartOptions = {
        segmentShowStroke: false,
        percentageInnerCutout: 75,
        animation: false
      };
      
      var chartUpdate = function(value) {
        console.log("Updating Chart: ", value);
        
        // Replace the chart canvas element
        $('#chart').replaceWith('<canvas id="chart" width="300" height="300"></canvas>');
        
        // Draw the chart
        var ctx = $('#chart').get(0).getContext("2d");
        new Chart(ctx).Doughnut([
          { value: value,
            color: '#4FD134' },
          { value: 100-value,
            color: '#DDDDDD' }],
          window.chartOptions);
        
        // Schedule next chart update tick
        setTimeout (function() { chartUpdate(value - 1); }, 1000);
      }

      $(document).ready(function() {
        setTimeout (function() { chartUpdate(99); }, 1000);
      })
      
    </script>
  </head>
  <body>
    <canvas id="chart" width="300" height="300"></canvas>
  </body>
</html>