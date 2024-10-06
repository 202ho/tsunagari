
let revenueDate = new Date();

$(document).ready(function() {

    function makeChart(data) {
        $('.revenue-chart-layout').empty();
            let canvasElement = '<canvas class="revenue-info" id="revenue-chart"></canvas>';
            $('.revenue-chart-layout').append(canvasElement);
            let lineChartCanvas = document.getElementById('revenue-chart');
            let lineChart = new Chart(lineChartCanvas, {
                type: 'doughnut',
                data: data,
             });
             lineChart.resize(380, 380);
    };

    function updateRevenueDate(date) {
        let year = date.getFullYear();
        let month = ('0' + (revenueDate.getMonth() + 1)).slice(-2); // Add leading zero if needed
        let formattedDate = `${year}-${month}`;
        $('.revenue-nav-date').text(formattedDate);

        $.ajax({
            url: '/api/host/revenue?date=' + formattedDate,
            type: 'GET',
            success: function(response) {
                const labelList = response.reservation.map(el => {
                    return el.title;
                })
                const priceList = response.reservation.map(el => {
                    return el.priceTotal;
                })
                const priceTotal = priceList.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
                const revenueData = {
                    labels: labelList,
                    datasets: [{
                        label: 'Revenue',
                        data: priceList,
                    }]
                };
                if(response.reservation.length === 0) {
                    $('.revenue-chart-layout').empty();
                    let empty = '<p>예약이 없습니다.</p>';
                    $('.revenue-chart-layout').append(empty);
                } else {
                    makeChart(revenueData);
                }
                $('#revenue-info-ul').empty();
                let totalPrice = '<li class="list-group-item list-group-item-dark"><span>총 수익  : </span><span id="revenue-total">' + priceTotal + '</span></li>';
                $('#revenue-info-ul').append(totalPrice);
                labelList.forEach( (title,idx) => {
                    let elem = '<li class="list-group-item "><span>' + title + ' : </span><span>' + priceList[idx] + '</span></li>';
                    $('#revenue-info-ul').append(elem);
                })

            },
            error: function(xhr, status, error) {
                alert("예약을 조회 할 수 없습니다.")
            }
        });
    }

    updateRevenueDate(revenueDate);

    $('.revenue-nav-prev').on('click', function(e) {
        e.preventDefault();
        revenueDate.setMonth(revenueDate.getMonth() - 1);
        updateRevenueDate(revenueDate);
    });

    $('.revenue-nav-next').on('click', function(e) {
        e.preventDefault();
        revenueDate.setMonth(revenueDate.getMonth() + 1);
        updateRevenueDate(revenueDate);

    });
});