function something()
{
	var x = window.localStorage.getItem('bbb');

	x = x * 1 + 1;
	
	window.localStorage.setItem('bbb', x);

	alert(x);
}

function add_to_cart(id)
{




	alert('You added cake with id: '+ id);
}