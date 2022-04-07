<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style>
        table {
	width: 750px;
	border-collapse: collapse;
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) {
	background: #eee;
	}

th {
	background: #3498db;
	color: white;
	font-weight: bold;
	}

td, th {
	padding: 10px;
	border: 1px solid #ccc;
	text-align: left;
	font-size: 18px;
	}

/*
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table {
	  	width: 100%;
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr {
		display: block;
	}

	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr {
		position: absolute;
		top: -9999px;
		left: -9999px;
	}

	tr { border: 1px solid #ccc; }

	td {
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		padding-left: 50%;
	}

	td:before {
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%;
		padding-right: 10px;
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}

}
    </style>
</head>
<body>
    <h1 style="text-align: center">Commande de livraisan</h1>
	<div style="display: flex;flex-direction: column; border: 1px solid #000;border-radius: 5px ;width: 300px; justify-content: center">
		<div><strong>Client : </strong> {{ $clients[0]['name_client'] }}</div>
		<div><strong>Adresse : </strong> {{ $clients[0]['addresse_client'] }}</div>	
		<div><strong>Tél : </strong> {{ $clients[0]['phone_client'] }}</div>	
	</div>
    <table border="1">
        <thead>
            <th>Réf</th>
            <th>Nom de produit</th>
            <th>Qté</th>
            <th>Prix (DH)</th>
            <th>Total</th>
        </thead>
        <tbody>
			@php
				$totalGlobal=0;

			@endphp
            @foreach ($items as $item)
                <tr>
                    <td>{{ $item['id'] }}</td>
                    <td>{{ $item['name'] }}</td>
                    <td>{{ $item['QNT'] }}</td>
                    <td>{{ $item['peice'] }} DH</td>
                    <td>{{ number_format((float)$item['total'], 2, '.', '') }} DH</td>
                </tr>
                @php
					$totalGlobal += $item['total'];
				@endphp

            @endforeach
            <tr>
                <td colspan="4">Total global</td>
                <td>{{ number_format((float)$totalGlobal, 2, '.', '') }} DH</td>
            </tr>
        </tbody>
    </table>

    <p>Thank you</p>
</body>
</html>
