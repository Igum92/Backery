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
	update_orders_input();
	
	update_orders_button();

}

function update_orders_input()
{
	var orders = get_cart_orders();
	$('#orders_input').val(orders);

}

function update_orders_button()
{
	var text = 'Cart(' + get_cart_size() + ')';
	$('#orders_button').val(text);
}

function get_cart_size()
{
	var localStorage=window.localStorage;
	sum = 0;


	for(var i=0, len=localStorage.length; i<len; i++) 
	{
	    var key = localStorage.key(i);
	    var value = localStorage[key];

	   if(key.indexOf('product_') == 0)
	   {
	   		sum = sum + value * 1;
	   }
	}

	return sum;
}

function get_cart_orders()
{
	var orders = '';


	for(var i=0, len=localStorage.length; i<len; i++)
	
	{
	   	var key = localStorage.key(i);
	    var value = localStorage[key];
	   
	   if(key.indexOf('product_') == 0)
	   {
	   		orders = orders + key + '=' + value + ',';
	   }
	}

	return orders;
}

function update_cart_page()
{
	var orders = get_cart_orders();
	$('#cart_table').text(orders);

	
}

