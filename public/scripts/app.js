console.log("yo");
var objectToSend = {items: []}

    var count = 1;
    var countEl = $("#count");
    
    // function minus(){
    //   if (count > 1) {
    //     count--;
    //     countEl.value = count;
    //   }  
    // }

    $('.plus').on('click', function(e){
      
        var amount = $(this).prev()[0]
        var value = $('value')
        console.log(amount);
        console.log(value);
        count++;
        $(amount).val(count);

        var item_id = $(this).prev().prev()[0].value
    })



// getEverything(makeAjax)
function makeAjax(){
    console.log(objectToSend)
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


// function getObject(){
//     return objectToSend
// }