/* Javascript code is downloaded and keep talking 
to the server to get the update from the server, and 
js accordingly modify the DOM(document object model),
can think DOM as the tree in memory that represent html.

exist in head/body of the page or a seperate file too.

<script>
</script>

*/

/* ====================== JS Notes ====================== 
    Ref: https://www.w3schools.com/js/default.asp

1.0 Variables: num, str, bool, null, undefined ----------

var a = 10;
var b = 5;

b++;
var c = ( a + b / 2)% 3;

var my_str = 'hello.'
var str_num = "5";
var changed = Number(str_num);

Using var to declear variable, the value won't lose.
Cannot re-declare a variable using let or const.

let/const - block view
var - global view

1.1 Var type conversions --------------------------------

------ To Booleans:
"Falsy" values: "false", null, undefined, 0, NaN, '' 
var x = 40
!!x; // true
Boolean(x);

------ To Numbers:
Number("3.14"); //3.14
Number(""); //0
Number("11 22"); //NaN

let y = "John";   // y is a string
let x = + y;      // x is a number (NaN)

------ To String:
String(293); //"293"
(100).toString();
true.toString();

5 + null    // returns 5         because null is converted to 0
"5" + null  // returns "5null"   because null is converted to "null"
"5" + 2     // returns "52"      because 2 is converted to "2"
"5" - 2     // returns 3         because "5" is converted to 5
"5" * "2"   // returns 10        because "5" and "2" are converted to 5 and 2


2.0 String Methods --------------------------------------

let text = "hello abc";
let idx = text.search("abc"); #6

let n = text.search(/ABC/i); #6 case insensitive

// replace one at a time
let text = "Hello Zoe.";
let text_alter = text.replace("Zoe", "Ms. Zhang");

const pattern = /e/;
pattern.test("this return true if e is inthe string");
same:
/e/.test("The best things in life are free!");

3.0 Comparison operator ---------------------------------
== equal to
=== equal value and type
!= not equal
!== not equal value or not equal type
>,<,=

&& - logical and
|| - logical or
! - logical not

4.0 try catch -------------------------------------------
try {
    Block of code to try
    if(x > 10) throw "is too high";
}
catch(err) {
    Block of code to handle errors
    document.getElementById("demo").innerHTML = err.name;
}
finally {
    Block of code to be executed 
    regardless of the try / catch result
}
5.0 Array [] --------------------------------------------
Ref https://www.w3schools.com/jsref/jsref_obj_array.asp


const cars = ["Saab", "Volvo", "BMW"];
or 
const cars = [];
cars[0]= "Saab";
cars[1]= "Volvo";
cars[2]= "BMW";
or
const cars = new Array("Saab", "Volvo", "BMW");

// Create an array with 40 undefined elements:
const points = new Array(40);  

cars[0]; //accessing and modifying

Method:
cars.length   // Returns the number of elements
cars.sort()   // Sorts the array

// calls a function (a callback function) once 
// for each array element.
cars.forEach(myFunction); // each ele call the func.

function myFunction(value) {
    txt += value + "<br>";
}

// The map() method creates a new array by 
// performing a function on each array element.
// it gets a new value by the map function
cars_dup = cars.map(myFunction);

function myFunction(value, index, array) {
    return value * 2;
}


// filter() method creates a new array
// with array elements that passes a test.
const numbers = [45, 4, 9, 16, 25];
const over18 = numbers.filter(myFunction);

function myFunction(value, index, array) {
    return value > 18;
}

6.0 Object {} -------------------------------------------
// pretty similar to dictionary, its key:value

const person = {
    firstName: "John",
    lastName: "Doe",
    age: 50,
    eyeColor: "blue"

    fullName : function() {
        return this.firstName + " " + this.lastName;
  }

};

person.lastName;
person["lastName"];
name = person.fullName();

7.0 Set ()

const letters = new Set(["a","b","c"]);

// Create a Set
const letters = new Set();

// Add Values to the Set
letters.add("a");
letters.add("b");
letters.add("c");

let text = "";
for (const x of letters.values()) {
    text += x;
}

8.0 Ifs & Loops -----------------------------------------

if (condition1) {
    ...
} else if (condition2) {
    ...
} else {
    ...
}

switch(expression) {
    case x:
        ...
        break;
    case y:
        ...
        break;
    default:
        ...
}


for (let i = 0; i < 5; i++) {
    text += "The number is " + i + "<br>";
}

for (key in object) {
    object[key]
}

for (var_id in array) {
    array[var_id]
}

for (variable of iterable(ie array, string)) {
    ...
}

do {
    ...
} while (condition);

while (condition) {
    ...
}

9.0 Classes ---------------------------------------------

class ClassName {
    constructor() { ... }
}

class Car {
    constructor(name, year) {
        this.name = name;
        this.year = year;
    }

    age() {
        let date = new Date();
        return date.getFullYear() - this.year;
    }
}

let myCar = new Car("Ford", 2014);

let myCar1 = new Car("Ford", 2014);


10.0 JSON ----------------------------------------------- 

let text = '{ "employees" : [' +
'{ "firstName":"John" , "lastName":"Doe" },' +
'{ "firstName":"Anna" , "lastName":"Smith" },' +
'{ "firstName":"Peter" , "lastName":"Jones" } ]}';

const obj = JSON.parse(text);


Getting a JSON file:
jQuery's  $getJSON

$.getJSON('mydata.json', function(data) {
    ...
});


11.0 DOM Events -----------------------------------------
https://www.w3schools.com/jsref/dom_obj_event.asp
====================================================== */

// Action
// Ref: https://cdn.cs50.net/2021/fall/lectures/8/src8.pdf

// Define the function to be used in the HTML 
function greet(){

    // get the name from the onsubmit element,
    // which has an id of "name", grab the actual typed in
    let submitted_name = document.querySelector("#name").value;

    alert('hello there ' + submitted_name);
}

document.addEventListener('DOMContentLoaded', () => {
    document.querySelector('#say_hello').addEventListener('submit', greet);
});


/* For the top 2 block, they can be replaced as followed: 

document.querySelector('form').addEventListener('submit', function (e){

    let submitted_name = document.querySelector("#name").value;
    alert('hello there ' + submitted_name);
    e.preventDefault();
});
*/



document.addEventListener('DOMContentLoaded', () => {

    var page_body = document.querySelector('body');

    document.querySelector('#red').addEventListener('click', function() {
        page_body.style.backgroundColor = 'red';
    });

    document.querySelector('#green').addEventListener('click', function() {
        page_body.style.backgroundColor = 'green';
    });

    document.querySelector('#blue').addEventListener('click', function() {
        page_body.style.backgroundColor = 'blue';
    });

    document.querySelector('#clear').addEventListener('click', function() {
        page_body.style.backgroundColor = 'white';
    });

});











