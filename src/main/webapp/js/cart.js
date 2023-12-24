var quantity = 1;
var price;

window.onload = function() {
    document.getElementById('quantityValue').value = quantity
    price = parseFloat(document.getElementById('itemPrice').getAttribute('data-price'))
    updateUI();
};

function addQuantity() {
    var quantityInput = document.getElementById('quantityValue');
    quantity = parseInt(quantityInput.value);
    quantity += 1;
    updateUI();
}

function reduceQuantity() {
    var quantityInput = document.getElementById('quantityValue');
    quantity = parseInt(quantityInput.value);
    if (quantity > 1) {
        quantity -= 1;
    }
    updateUI();
}

function updateUI() {
    document.getElementById('itemPrice').innerText = 'Total: $' + (quantity * price).toFixed(2);

    document.getElementById('quantityValue').value = quantity;
}