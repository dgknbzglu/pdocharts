$(document).ready(function () {
    showGraph();
});
function showGraph()
{
    {
        $.post("data.php",
        function (data)
        {
            console.log(data);
            var ad = [];
            var satis = [];
            var renk = [];

            for (var i in data) {
                ad.push(data[i].ad);
                satis.push(data[i].satis);
                renk.push(data[i].renk);
            }

            var chartdata = {
                labels: ad,
                datasets: [
                    {
                        label: "Satışlar",
                        backgroundColor: renk,
                        borderColor: '#474747',
                        borderWidth: 1,
                        data: satis 
                    }
                ]
            };
            var graphTarget = $("#satislar");
            var barGraph = new Chart(graphTarget, {
                type: 'doughnut',
                data: chartdata
            });
        });
    }
}