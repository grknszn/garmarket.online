 <script type='text/javascript' src="js/jquery.mycart.js"></script>


 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>


 <script type="text/javascript">
     $(function() {

         var goToCartIcon = function($addTocartBtn) {
             var $cartIcon = $(".my-cart-icon");
             var $image = $('<img width="50px" height="50px" src="' + $addTocartBtn.data("image") + '"/>').css({
                 "position": "fixed",
                 "z-index": "999"
             });
             $addTocartBtn.prepend($image);
             var position = $cartIcon.position();
             $image.animate({
                 top: position.top,
                 left: position.left
             }, 700, "linear", function() {
                 $image.remove();
             });
         }

         $('.my-cart-btn').myCart({
             currencySymbol: '₺',
             classCartIcon: 'my-cart-icon',
             classCartBadge: 'my-cart-badge',
             classProductQuantity: 'my-product-quantity',
             classProductRemove: 'my-product-remove',
             classCheckoutCart: 'my-cart-checkout',
             affixCartIcon: true,
             showCheckoutModal: true,
             numberOfDecimals: 2,
             cartItems: [],
             clickOnAddToCart: function($addTocart) {
                 goToCartIcon($addTocart);
             },
             afterAddOnCart: function(products, totalPrice, totalQuantity) {
                 console.log("afterAddOnCart", products, totalPrice, totalQuantity);
             },
             clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) {
                 console.log("cart icon clicked", $cartIcon, products, totalPrice, totalQuantity);
             },
             checkoutCart: function(products, totalPrice, totalQuantity) {
                 var checkoutString = "Total Price: " + totalPrice +
                     "\n Total Quantity: " + totalQuantity;


                 checkoutString += "\n\n id \t name \t özet \t price \t quantity \t image path";
                 $.each(products, function() {
                     checkoutString += ("\n " + this.id + " \t " + this.name + " \t " + this.summary + " \t " + this.price + " \t " + this.quantity + " \t " + this.image);
                 });
                 
                 

                 alert(checkoutString)
                 console.log("checking out", products, totalPrice, totalQuantity);


             }
         });


     });

 </script>

 </body>

 </html>
