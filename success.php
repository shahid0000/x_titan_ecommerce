<?php include 'inc/header.php';?>
<?php
	$login = Session::get("cuslogin");
	if($login == false) {
		header("Location:login.php");
	}
?> 
<style type="text/css">
.psuccess {
	width: 500px;
	min-height: 200px;
	text-align: center;
	border: 1px solid #ddd;
	margin: 0 auto;
	padding: 20px;
}
.psuccess h2 {
	border-botttom: 1px solid #ddd;
	font-weight: bold;
	margin: 40px;
	color: green;
}
.psuccess p {
	line-height: 25px;
	font-size: 18px;
	text-align: left;
}


</style>
 <div class="main">
    <div class="content">
		<div class="section group">
			<div class="psuccess">
				<h2>Success</h2>
				<?php
					$cmrId = Session::get("cmrId");
					$amount = $ct->payableAmount($cmrId);
					if($amount) {
						$sum = 0;
						while ($result = $amount->fetch_assoc()) {
							$price = $result['price'];
							$sum = $sum + $price;
						}
					}
				?>
				<p>Total Payable Amount(Including Vat) : $
					<?php						
						$vat = $sum * 0.1;
						$total = $sum + $vat;
						echo $total;
					?>
				</p>
				<p style="color:red">Thanks for Purchase. Receive Your Order Successfully. We will contact you ASAP with delivery details. Here is your order details.....<a href="orderdetails.php">Visit Here..</a></p>
			</div>
 		</div>
 	</div>
</div>
   <?php include 'inc/footer.php';?>