<html>
<head>
<title> Daily pass</title>
<style type ="text/css">

table{
	
	background-color:Tomato;
}
th{
	width:150px;
	text-align:left;
}
</style>
</head>
<body bgcolor=#333 text=white>
<center>

<font size=6>

 <img src="metro.jpg"  width="100%" height="250"> 
<div><hr size=15 color="red"></div>

<?php


include('c.php');
$name = $_POST['passname'];
$source = $_POST['source'];
$destination = $_POST['dest'];
$entry_time = date("h:i:sa");
$expiry_time = date("h:i:sa");
$expiry_date = strtotime("+1 day", strtotime(date("Y-m-d")));
$expiry_date1= date("Y-m-d", $expiry_date);

$expiry_time = date("h:i:sa");


if((strlen($source)>0)&&(strlen($destination)>0)){

$query= "select * from trains where source='$source' and destination='$destination'";
$result = $conn->query($query);
$cnt=$result->num_rows;
if(($cnt)>0){
$query = "INSERT INTO daily_pass(name,entry_time,expiry_date,expiry_time,Source,Destination)VALUES  ('$name','$entry_time','$expiry_date1','$expiry_time','$source','$destination')";                    
//$resul = mysqli_query($conn,$query);
if(mysqli_query($conn,$query))
	{
	 
echo"<table border=1>" ;echo "<B><I>Pass Issued</I></B><br><br>";
echo "<br>";
echo "<I>Details</I>"; 
$quer= "select * from daily_pass where source='$source' and destination='$destination' and name='$name'";
$result = $conn->query($quer); 
echo"<table border=0>";

	while($row= $result->fetch_assoc()) {
echo "<tr><td>";
echo "<strong>Ticket_no :  </strong>" .$row['ticket_no'];
echo "<br><br><br>";
echo "<tr><td>";
echo "<strong>Name :  </strong>" .$row['name'];
echo "<br><br><br>";
echo "<strong>Source :  </strong>" .$row['Source'];
echo "<br><br><br>";

echo "<strong>Destination :  </strong>".$row['Destination'];
echo "<br><br><br>";
echo "<strong>Expiry_time :  </strong>".$row['expiry_time'];
echo "<br><br><br>";
echo "<strong> Your Pass expires on :  </strong>".$row['expiry_date'];

echo "<br><br><br>";


}
echo "</table>";
	}
	else
	{
	echo"invalid";
}}
else{
echo "no data found";
}
}



?>
<div><button id=rcorners1  onClick="window.location.href='/n.php'"> <B>  <I> Home   </I> </B></button></div>
</font>
</head>
</body>
</html>
