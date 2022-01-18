/* Javascript code is downloaded and keep talking 
to the server to get the update from the server, and 
js accordingly modify the DOM(document object model),
can think DOM as the tree in memory that represent html.

exist in head/body of the page or a seperate file too.

<script>
</script>

*/

/* ====================== JS Notes ====================== 

1.0 Variables: numbers, string, bool, null, undefined

var a = 10;
var b = 5;

b++;
var c = ( a + b / 2)% 3;

var my_str = 'hello.'
var str_num = "5";
var changed = Number(str_num);

Using var to declear variable, the value won't lose.
Cannot re-declare a variable using let or const.



====================================================== */

// Action

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

    var body = document.querySelector('body');

    document.querySelector('#red').addEventListener('click', function() {
        body.style.backgroundColor = 'red';
    });

    document.querySelector('#green').addEventListener('click', function() {
        body.style.backgroundColor = 'green';
    });

    document.querySelector('#blue').addEventListener('click', function() {
        body.style.backgroundColor = 'blue';
    });

    document.querySelector('#clear').addEventListener('click', function() {
        body.style.backgroundColor = 'white';
    });

});











