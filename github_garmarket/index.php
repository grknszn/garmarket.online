<?php session_start(); ?>
<?php include "connect.php"; ?>
<?php include "navbar.php"; ?>

<div class="page-header">
    <h1>Products
        <div style="float: right; cursor: pointer;">
            <span class="fas fa-shopping-cart my-cart-icon"><span class="badge badge-notify my-cart-badge"></span></span>
        </div>
    </h1>
</div>


<!-- SHOP CONTENT -->
<section id="content">

    <div class="container text-center">


        <div class="row" style="font-family: 'Ubuntu', sans-serif; font-size:20px;">


            <?php 
								$sql = "SELECT * FROM products";
								if(isset($_GET['id']) & !empty($_GET['id'])){
									$id = $_GET['id'];
									$sql .= " WHERE catid=$id";
								}
								

								$res = mysqli_query($connection, $sql);
								while($r = mysqli_fetch_assoc($res)){
							?>
            <div class="mb-2 p-2 prod">
                <div class="product">
                    <div class="product-thumb">
                        <img src="<?php echo $r['thumb']; ?>" class="img-responsive" width="150px" alt="">
                        <div class="product-overlay">

                        </div>
                    </div>



                    <span class=""><a href="single.php?id=<?php echo $r['id']; ?>"><?php echo $r['name']; ?></a></span>
                    <div class="product-price"><?php echo $r['price']; ?> ₺<span></span></div>
                </div>



                <button class="btn btn-danger my-cart-btn" data-id="<?php echo $r['id']; ?>" data-name="<?php echo $r['name']; ?>" data-summary="summary 1" data-price="<?php echo $r['price']; ?>" data-quantity="1" data-image="<?php echo $r['thumb']; ?>">Add to Cart</button>

            </div>
            <?php } ?>



        </div>





    </div>

</section>










<?php include "footer.php"; ?>
