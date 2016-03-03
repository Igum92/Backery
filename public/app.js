function something()
{
	var x = window.localStorage.getItem('bbb');

	x = x * 1 + 1;
	
	window.localStorage.setItem('bbb', x);

	alert(x);
}

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;

	window.localStorage.setItem(key, x);
console.log(key);
	get_cart_size();
}

function get_cart_size()
{
	var localStorage=window.localStorage;
	var sum = 0;


	for(var i=0, len=localStorage.length; i<len; i++) {
	    var key = localStorage.key(i);
	    var value = localStorage[key];
	    console.log(key + " => " + value);

	    sum = sum + parseInt(value,10);
	}
	console.log('in cart ' + sum +' cakes');
}