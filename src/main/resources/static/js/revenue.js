$(document).ready(function() {
    const data = {
        labels: ['JAN', 'FEB', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
        datasets: [{
            label: 'Revenue',
            data: [10, 20, 30, 10, 20, 30, 10, 20, 30, 10, 20, 30],
        }]
    };

    let lineChartCanvas = document.getElementById('revenue-chart');

    let lineChart = new Chart(lineChartCanvas, {
        type: 'doughnut',
        data: data,
    });
    lineChart.resize(380, 380);
});