/*var quantity = 1;
var price;

window.onload = function() {
    price = parseFloat(document.getElementById('itemPrice').getAttribute('data-price'))
    updateUI();
};

function addQuantity() {
    var quantityInput = document.querySelectorAll('.quantityValue')[0];
    quantity = parseInt(quantityInput.value);
    quantity += 1;
    updateUI();
}

function reduceQuantity() {
    var quantityInput = document.querySelectorAll('.quantityValue')[0];
    quantity = parseInt(quantityInput.value);
    if (quantity > 1) {
        quantity -= 1;
    }
    updateUI();
}

function updateUI() {
    document.getElementById('itemPrice').innerText = 'Total: $' + (quantity * price).toFixed(2);

    var quantityItems = document.querySelectorAll('.quantityValue');
		quantityItems[0].value = quantity;
		quantityItems[1].value = quantity;
}*/

var quantity = 1;
var price;

window.onload = function() {
    price = parseFloat(document.getElementById('itemPrice').getAttribute('data-price'));
    updateUI();
};

function addQuantity() {
    var quantityInput = document.querySelector('.quantityValue');
    quantity = parseInt(quantityInput.value);
    quantity += 1;
    updateUI();
}

function reduceQuantity() {
    var quantityInput = document.querySelector('.quantityValue');
    quantity = parseInt(quantityInput.value);
    if (quantity > 1) {
        quantity -= 1;
    }
    updateUI();
}

function updateUI() {
    var total = (quantity * price).toFixed(2);
    document.getElementById('itemPrice').innerText = 'Total: $' + total;

    var quantityItems = document.querySelectorAll('.quantityValue');
    quantityItems.forEach(function(element) {
        element.value = quantity;
    });
}

