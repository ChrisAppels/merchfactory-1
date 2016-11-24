

$(document).ready(function() {
 $('#order_item_quantity').keyup(function(event) {
   var quantity = $("#order_item_quantity").val();

   if (quantity == "") {
    $("#jq-price-per-unit").text("€ --");
    $("#jq-total-price").text("€ --");
  }else{


   if (price_lists){

     var chosen_bracket = null;
     price_lists.forEach(function(bracket){
       if (bracket.quantity <= quantity){
         chosen_bracket = bracket;
       }else{
         return false;
       }
     });
     if (!chosen_bracket){
      return false;
    }
    var total_price = quantity * chosen_bracket.price_cents / 100;
    total_price = total_price.toFixed(2);
    /////////////total price
    console.log(total_price);

    var unit_price = (chosen_bracket.price_cents / 100.00).toFixed(2)

    $("#jq-price-per-unit").text("€" + unit_price);
    $("#jq-total-price").text("€" + total_price);

  }
}
});
});
