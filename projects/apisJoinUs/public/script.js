// $.get("https://api.coinbase.com/v2/prices/BTC-USD/spot", function( data ) {
//   console.log(data.data.amount);
//   $('#coinbase-btc').html(data.data.amount);
// });

// $.get("https://poloniex.com/public?command=returnTicker", function( data ) {
//   var btc_eth = data.BTC_ETH.last;
//   $('#poloienx-btc').html(btc_eth);
// });

// $.get("https://api.korbit.co.kr/v1/ticker/detailed?currency_pair=btc_krw", function( data ) {
//   console.log(data);
//   // var btc_eth = data.BTC_ETH.last;
//   // $('#poloienx-btc').html(btc_eth);
// });





// $.ajax({
//   url: "https://api.coinbase.com/v2/prices/BTC-USD/spot",
//   xhrFields: {
//     withCredentials: true
//   }, function(data) {
//     console.log(data);
//   }
// });

function reqListener () {
  console.log(this.responseText);
}

var oReq = new XMLHttpRequest();
oReq.addEventListener("load", reqListener);
oReq.open("GET", "https://api.korbit.co.kr/v1/ticker/detailed?currency_pair=btc_krw");
oReq.send();
