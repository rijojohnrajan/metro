<html>
<head>

<title>Ticket booking</title>
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
<body bgcolor=#333 background="12.jpg" text="white">
<center>
<font size=6>
<?php



include('c.php');
$name = $_POST['passname'];
$source = $_POST['source'];
$destination =  $_POST['dest'];

if((strlen($source)>0)&&(strlen($destination)>0)){

$query= "select * from trains where source='$source' and destination='$destination'";
$result = $conn->query($query);
$cnt=$result->num_rows;
if(($cnt)>0){

$query = "INSERT INTO passenger(passenger_name,p_source,p_destination)VALUES('$name','$source','$destination')";
$result = mysqli_query($conn,$query);
if($result)
	{
	 echo"<table border=1>" ;echo "Booking Confirmed<br><br>";
echo "<strong>Name : </strong>" .$name; 



echo "<br>";
echo "Details"; 
$quer= "select t.Train_no,t.Source,t.Destination,p.passenger_name,p.ticket_no from trains t join passenger p on t.Source=p.p_source and t.Destination=p.p_destination where p_source='$source' and p_destination='$destination' and passenger_name='$name'";
$result = $conn->query($quer); 
echo"<table border=0>";

	while($row= $result->fetch_assoc()) {
echo "<tr><td>";
echo "<strong>Ticket_no :  </strong>" .$row['ticket_no'];
echo "<br><br><br>";
echo "<strong>Train_no :  </strong>" .$row['Train_no'];
echo "<br><br><br>";
echo "<strong>Name :  </strong>" .$row['passenger_name'];
echo "<br><br><br>";
echo "<strong>Source :  </strong>" .$row['Source'];
echo "<br><br><br>";

echo "<strong>Destination :  </strong>".$row['Destination'];
echo "<br><br><br>";


}
echo "</table>";
	}
	else
	{
	echo"invalid ... please  Enter unique name";
}

}
else {
echo "no data found";
}
}
include('st.css');

?>
<right><div><button id=rcorners1  onClick="window.location.href='/n.php'"> <B>  <I> Home   </I> </B></button></div> </right>
</tr></table>
</head>
</body>
</html>
