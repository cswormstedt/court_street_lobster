console.log("yo");
var objectToSend = {items: []}

    var count = 1;
    var countEl = document.getElementById("count");
    // function plus(){
    //     count++;
    //     countEl.value = count;
    // }
    // function minus(){
    //   if (count > 1) {
    //     count--;
    //     countEl.value = count;
    //   }  
    // }

    $('.plus').on('click', function(e){
      
        var amount = $(this).prev()[0]

        $(amount).val()++

        var item_id = $(this).prev().prev()[0].value


    })

function makeAjax(){
    console.log(objectToSend)
}

function getEverything(callBack){
    var items = $('ul').children()

    for (var i=0; i < items.length; i++){
        var obj = {};
        obj.amount = $(items[i]).find('input[name="amount"]').val()
        objectToSend.items.push(obj)
    }

    return callBack()
}


function getObject(){
    return objectToSend
}