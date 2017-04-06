console.log("yo");
var objectToSend = {items: []}

    var value   = $(".value")

//add item amount 
    $('.plus').on('click', function(e){
        var item_id = $(this).prev().prev()[0].value
        var amount = $(this).prev().val()
        console.log(this)
        amount++
        $(this).prev().attr("value", amount)

        console.log($(this).prev().val())
    
    })

//min item amount
    $('.min').on('click', function(e){
        var item_id = $(this).parent()[0].value
        console.log(this)
        var amount = $(this).next().next().val()
        var button = $(e.target);
        var id = button.data('id')
        console.log('click' + id)
        if (amount > 0){
        amount--;
        $(this).next().next().attr("value", amount)
        console.log($(this).next())
        }
    })

// getEverything(makeAjax)
function makeAjax(){
    
      $.ajax({
        url: '/menu',
        type: 'POST',
        data: JSON.stringify(objectToSend),
        contentType: 'application/json',
        success: function(res){
            console.log(objectToSend);


        },
        error: function(err){
            console.log(err);
        }
    })

}

function getEverything(callBack){
    var items = $('ul').children()

    for (var i=0; i < items.length; i++){
        var obj = {};
        //looks for id
        obj.item_id = $(items[i]).find('input[name="id"]').val()
        //looks for amount
        obj.amount = $(items[i]).find('input[name="amount"]').val()
        objectToSend.items.push(obj)
    }

    return callBack()
}


$('.cart').on('click', function(){
console.log('btn working')

    getEverything(makeAjax)

})