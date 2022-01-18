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


2.0 Comparison operator ---------------------------------
== equal to
=== equal value and type
!= not equal
!== not equal value or not equal type
>,<,=

&& - logical and
|| - logical or
! - logical not

Array []
Object {}


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











