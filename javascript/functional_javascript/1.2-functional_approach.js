//Introdcution to functional javascript

//Functional approach - declarative programming 'what'

function createInvoice( invoiceNumber ){
    return {
        invoiceNumber,
        items: []
    };
};

function clone( o ) {
    return JSON.parse( JSON.stringify( o ) );
};

function addItem( invoice, quantity, itemPrice, description ) {
    const invoiceItems = clone( invoice.items );
    const newItem = {
        quantity: quantity,
        itemPrice: itemPrice,
        description : description
    };

    return {
        invoiceNumber: invoice.invoiceNumber,
        items: [ ...invoiceItems, newItem ]
    };
};

function calculateSum( invoice ) {
    const logReducer = (acc, item) => {
        // console.log ( 'acc, item.itemPrice: ',  acc, item.itemPrice );
        return acc + item.quantity * item.itemPrice;
    }
    const reducer = (acc, item) =>
        acc + item.quantity + item.itemPrice;
        return invoice.items.reduce( logReducer, 0 );
};

function getDescription (invoice) {
    const logReducer = (acc, item) => {
         // console.log ( 'acc, item.itemPrice: ',  acc, item.itemPrice );
        return acc + item.description + ' ';
    }

    const reducer = (acc, item) =>
        acc + item.description;
        return invoice.items.reduce( logReducer, 0 );
};

const invoice1a = createInvoice( 1 );
const invoice2a = createInvoice( 2 );

const invoice1b = addItem( invoice1a, 2, 10, 't-shirt');
const invoice1 = addItem(invoice1b, 3, 25, 'bag');

const invoice2b = addItem(invoice2a, 10, 1, 'bulb');
const invoice2 = addItem(invoice2b, 2, 10, 'pillow');

console.log("Invoice 1 sum: %d\nItems in cart: %s", calculateSum(invoice1), getDescription(invoice1));
console.log("Invoice 2 sum: %d\nItems in cart: %s", calculateSum(invoice2), getDescription(invoice2));

//different approach between functional and imperative programming
//imperative Factorial

function imperativeFactorial( num ) {
    let result = 1;

    while ( num > 1 ) {
        result *= num;
        num -= 1;
    }
    return result;
}

console.log(imperativeFactorial(5));


// functional factorial
const factorial = (num) =>
    num <= 1 ?
    1:
    num * factorial(num -1);

console.log(factorial(5));