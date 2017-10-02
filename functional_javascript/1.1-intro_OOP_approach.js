//Introdcution to functional javascript

//OOP method - imperative programming 'how'

class Invoice {

    constructor( invoiceNum )
    {
        this.innvoiceNumber = invoiceNum;
        this.items = [];
    }

    addItem( quantity, itemPrice, description) {
        this.items.push( {quantity, itemPrice, description} );
    }

    get sum() {
        let sum = 0;
        for (let i = 0; i < this.items.length; i++) {
            let item = this.items[i];
            sum += item.quantity * item.itemPrice;
        }
        return sum;
    }

    get description() {
        let description = "";
        for(let i = 0; i < this.items.length; i++) {
            let item = this.items[i];
            description += item.description + ' ';
        }

        return description;
    }
}

const invoice1 = new Invoice(1);
const invoice2 = new Invoice(2);

invoice1.addItem( 2, 10, 'T-shirt' );
invoice1.addItem( 3, 25, 'Bag');

invoice2.addItem(10, 1, 'bulb');
invoice2.addItem(2, 10, 'pillow');

console.log('Invoice 1 sum: %d\nItems bought: %s' , invoice1.sum, invoice1.description);
console.log('Invoice 2 sum: %d\nItems bought: %s' , invoice2.sum, invoice2.description);

var date = new Date();
var day = date.getDate();
var month = date.getMonth();
var year = date.getFullYear();


function currentDate(day, month, year) {
    let months = ['January', 'Febraury', 'March', 'April', 'May', 'June', 'July', 'August', 'Septemebr', 'October', 'Novemebr', 'December'];
    console.log("Today's date: %d %s %d", day, months[month], year);
}

currentDate(day, month, year);