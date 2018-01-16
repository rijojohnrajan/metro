<html>
<head>

<center>


 <img src="metro.jpg"  width="100%" height="350"> 
<div1><hr size=15 color="red"></div1>
<body bgcolor=#333 text=white>

<font size=6>

<br>
<br>






<?php 
include('c.php');
include('st.css');
$feed =  $_POST['feed'];
$query = "INSERT INTO feedback(feed)VALUES('$feed')";

if(mysqli_query($conn,$query))
	{
	 
echo "<B><I>Thankyou for your valid feedback </I></B><br><br>";
echo "<br>";

}
else
{
echo"no";
}
?>
</center>
</head>
</body>
</html>
