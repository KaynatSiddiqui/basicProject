/*Morris Init*/
$(function() {
	"use strict";
	
    if($('#morris_area_chart').length > 0)
		// Area Chart
		Morris.Area({
			element: 'morris_area_chart',
			data: [{
				period: '2010 Q1',
				iphone: 2666,
				ipad: null,
				itouch: 2647
			}, {
				period: '2010 Q2',
				iphone: 2778,
				ipad: 2294,
				itouch: 2441
			}, {
				period: '2010 Q3',	
				iphone: 4912,
				ipad: 1969,
				itouch: 2501
			}, {
				period: '2010 Q4',
				iphone: 3767,
				ipad: 3597,
				itouch: 5689
			}, {
				period: '2011 Q1',
				iphone: 6810,
				ipad: 1914,
				itouch: 2293
			}, {
				period: '2011 Q2',
				iphone: 5670,
				ipad: 4293,
				itouch: 1881
			}, {
				period: '2011 Q3',
				iphone: 4820,
				ipad: 3795,
				itouch: 1588
			}, {
				period: '2011 Q4',
				iphone: 15073,
				ipad: 5967,
				itouch: 5175
			}, {
				period: '2012 Q1',
				iphone: 10687,
				ipad: 4460,
				itouch: 2028
			}, {
				period: '2012 Q2',
				iphone: 8432,
				ipad: 5713,
				itouch: 1791
			}],
			xkey: 'period',
			ykeys: ['iphone', 'ipad', 'itouch'],
			labels: ['iPhone', 'iPad', 'iPod Touch'],
			pointSize: 0,
			pointStrokeColors:['#0f4fa8', '#b10058', '#f2b701'],
			behaveLikeLine: true,
			gridLineColor: '#878787',
			lineWidth: 0,
			smooth: true,
			hideHover: 'auto',
			lineColors: ['#0f4fa8', '#b10058', '#f2b701'],
			resize: true,
			gridTextColor:'#878787',
			gridTextFamily:"Roboto",
		});

    if($('#morris_donut_chart').length > 0) {
		// Donut Chart
		Morris.Donut({
			element: 'morris_donut_chart',
			data: [{
				label: "Download Sales",
				value: 12
			}, {
				label: "In-Store Sales",
				value: 30
			}, {
				label: "Mail-Order Sales",
				value: 20
			}],
			colors: ['#0f4fa8', '#b10058', '#f2b701'],
			resize: true,
			labelColor: '#878787',
		});
		$("div svg text").attr("style","font-family: Roboto").attr("font-weight","400");
	}	

    if($('#morris_line_chart').length > 0)
		// Line Chart
		Morris.Line({
			// ID of the element in which to draw the chart.
			element: 'morris_line_chart',
			// Chart data records -- each entry in this array corresponds to a point on
			// the chart.
			data: [{
				d: '2018-06-01',
				percentage: 66
			}, {
				d: '2018-06-02',
				percentage: 55
			}, {
				d: '2018-06-03',
				percentage: 55
			}, {
				d: '2018-06-04',
				percentage: 66
			}, {
				d: '2018-06-05',
				percentage: 77
			}, {
				d: '2018-06-06',
				percentage: 88
			}, {
				d: '2018-06-07',
				percentage: 63
			}, {
				d: '2018-06-08',
				percentage: 97
			}, {
				d: '2018-06-09',
				percentage: 86
			}, {
				d: '2018-06-10',
				percentage: 85
			}, {
				d: '2018-06-11',
				percentage: 83
			}, {
				d: '2018-06-12',
				percentage: 81
			}, {
				d: '2018-06-13',
				percentage: 80
			}, {
				d: '2018-06-14',
				percentage: 87
			}, {
				d: '2018-06-15',
				percentage: 87
			}, {
				d: '2018-06-16',
				percentage: 87
			}, {
				d: '2018-06-17',
				percentage: 79
			}, {
				d: '2018-06-18',
				percentage: 87
			}, {
				d: '2018-06-19',
				percentage: 78
			}, {
				d: '2018-06-20',
				percentage: 63
			}, {
				d: '2018-06-21',
				percentage: 74
			}, {
				d: '2018-06-22',
				percentage: 65
			}, {
				d: '2018-06-23',
				percentage: 78
			}, {
				d: '2018-06-24',
				percentage: 98
			}, {
				d: '2018-06-25',
				percentage: 46
			}, {
				d: '2018-06-26',
				percentage: 98
			}, {
				d: '2018-06-27',
				percentage: 65
			}, {
				d: '2018-06-29',
				percentage: 80
			}, {
				d: '2018-06-30',
				percentage: 71
			},],
			// The name of the data record attribute that contains x-visitss.
			xkey: 'd',
			// A list of names of data record attributes that contain y-visitss.
			ykeys: ['percentage'],
			// Labels for the ykeys -- will be displayed when you hover over the
			// chart.
			labels: ['Percentage'],
			// Disables line smoothing
			pointSize: 1,
			pointStrokeColors:['#0f4fa8'],
			behaveLikeLine: true,
			gridLineColor: '#878787',
			gridTextColor:'#878787',
			lineWidth: 2,
			smooth: true,
			hideHover: 'auto',
			lineColors: ['#0f4fa8'],
			resize: true,
			gridTextFamily:"Roboto"
		});

	if($('#morris_bar_chart').length > 0)
	   // Bar Chart
		Morris.Bar({
			element: 'morris_bar_chart',
			data: [{
				device: 'Easy',
				geekbench: 55
			}, {
				device: 'Medium',
				geekbench: 68
			}, {
				device: 'Hard',
				geekbench: 40
			}],
			xkey: 'device',
			ykeys: ['geekbench'],
			labels: ['%'],
			barRatio: 0.4,
			xLabelAngle: 35,
			pointSize: 1,
			pointStrokeColors:['#f2b701'],
			behaveLikeLine: true,
			gridLineColor: '#878787',
			gridTextColor:'#878787',
			hideHover: 'auto',
			barColors: ['#f2b701'],
			resize: true,
			gridTextFamily:"Roboto"
		});
	
	if($('#morris_extra_line_chart').length > 0)
		Morris.Line({
        element: 'morris_extra_line_chart',
        data: [{
            period: '2018-06-01',
            physics: 74,
            chemistry: 84,
            maths: 89
        }, {
            period: '2018-06-02',
           physics: 65,
            chemistry: 45,
            maths: 36
        }, {
            period: '2018-06-03',
            physics: 69,
            chemistry: 75,
            maths: 68
        }, {
            period: '2018-06-04',
            physics: 74,
            chemistry: 99,
            maths: 68
        }, {
            period: '2018-06-05',
            physics: 78,
            chemistry: 86,
            maths: 67
        }, {
            period: '2018-06-06',
           physics: 75,
            chemistry: 68,
            maths: 38
        },
         {
            period: '2018-06-07',
            physics: 66,
            chemistry: 78,
            maths: 98
        }],
        xkey: 'period',
        ykeys: ['physics', 'chemistry', 'maths'],
        labels: ['Physics', 'Chemistry', 'Maths'],
        pointSize: 2,
        fillOpacity: 0,
		lineWidth:2,
		pointStrokeColors:['#0f4fa8', '#b10058', '#f2b701'],
		behaveLikeLine: true,
		gridLineColor: '#878787',
		hideHover: 'auto',
		lineColors: ['#0f4fa8', '#b10058', '#f2b701'],
		resize: true,
		gridTextColor:'#878787',
		gridTextFamily:"Roboto"
        
    });
	
	if($('#morris_extra_bar_chart').length > 0)
		// Morris bar chart
		Morris.Bar({
			element: 'morris_extra_bar_chart',
			data: [{
				y: '2006',
				a: 100,
				b: 90,
				c: 60
			}, {
				y: '2007',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2008',
				a: 50,
				b: 40,
				c: 30
			}, {
				y: '2009',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2010',
				a: 50,
				b: 40,
				c: 30
			}, {
				y: '2011',
				a: 75,
				b: 65,
				c: 40
			}, {
				y: '2012',
				a: 100,
				b: 90,
				c: 40
			}],
			xkey: 'y',
			ykeys: ['a', 'b', 'c'],
			labels: ['A', 'B', 'C'],
			barColors:['#0f4fa8', '#b10058', '#f2b701'],
			hideHover: 'auto',
			gridLineColor: '#878787',
			resize: true,
			gridTextColor:'#878787',
			gridTextFamily:"Roboto"
		});

});
