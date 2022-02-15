async function getdata(duration)
{
	var request = await fetch("/ExpenseTracker/ChartData?type=debit&duration="+duration)
	.then(response => response.json())
	.then(data => {
		debitchart_data = data
		console.log(debitchart_data)
		debitchart = new Chart(ctx1, debitchart_data);
		})
		
	var request = await fetch("/ExpenseTracker/ChartData?type=credit&duration="+duration)
	.then(response => response.json())
	.then(data => {
		creditchart_data = data
		console.log(creditchart_data)
		creditchart = new Chart(ctx2, creditchart_data);
		})
	gettransactions(duration)
}
function update(duration)
{
	debitchart.destroy();
	creditchart.destroy();
	getdata(duration)
}

function search_key(key)
{
	let select_box = document.getElementById("duration").value;
	gettransactions(select_box+"&key=" + key);
}

async function gettransactions(duration)
{
	var ajax = new XMLHttpRequest();
	ajax.onreadystatechange = function()
	{
		if(this.readyState == 4 && this.status == 200)
			{
			document.querySelector(".box1").innerHTML = ajax.responseText;
			}
	};
	ajax.open("get", "./History?duration=" + duration, true);
	await ajax.send();	
}

