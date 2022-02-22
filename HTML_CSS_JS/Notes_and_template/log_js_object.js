/* Objects has properties and methods*/

// --------------- Create an object --------------- //
// object literals
let user = {
    f_name : 'zoe',
    l_name : 'zhang',
    age : 1998,
    major : ["EE", "CE", "AI", "BUS"],
    full_name : function() {
        return this.f_name + " " + this.l_name;
    },

    // getter - better data quality security
    get user_age(){
        return this.age;
    },

    // setter - better data quality security
    set user_age(age_in){
        this.age = age_in;
    }
};

// using getter and setter
user.user_age(2000);
// for getter and setter, when calling, no need "()"

// new
let user = new Object();
user.f_name = "zoe";
user.l_name = 'zhang';
user.age = 1998;
user.major = ["EE", "CE", "AI", "BUS"];
user.full_name = function() {
    return this.f_name + " " + this.l_name;
}

user.others = "abc";
delete user.others; // delete user["others"];



// constructor
function User(f, l, a, m){
    this.f_name = f;
    this.l_name = l;
    this.age = a;
    this.major = m;
}

let u1 = new User("zoe","zhang",1998,"ECE");

// prototype - add a new property to constructor
User.prototype.email = "";
User.prototype.name = function (){
    return this.f_name + " " + this.l_name;
};

// __proto__ - link an object to another object type

// object destructuring assignment
let {f,l,a,m} = u1; // easier var assignment

// ----- data handling -----

// Asynchronous vs sync
/* sync - doing one thing at a time */
/* asyn - pre-load like fetch */

/* async methods - callback/settimeout/alert */
// https://github.com/iamshaunjp/modern-javascript/tree/lesson-6/chapter_2

// spread example

window.onload = function (){
    // example 1
    var members = ["zoe", "amy", "rose"];
    console.log(...members); // zoe amy rose

    // example 2 
    var num_1 = [1, 2, 3];
    var num_2 = [4, 5, 6];

    // combine the components
    var num_3 = [...num_1, 4, 5, 6];

    // example 3
    var numbers = [2, 5, 7, 9];
    function add_num (a, b, c, d){
        console.log(a + b + c + d);
    }

    add_num(...numbers);

    



}
