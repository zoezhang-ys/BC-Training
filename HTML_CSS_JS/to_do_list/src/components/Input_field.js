import React from 'react';

const Input_field = () => {

    const start_date = document.querySelector('#sd');
    const end_date = document.querySelector('#ed');
    const todo_details = document.querySelector('#td');
    const form = document.querySelector('.todo-form');

    const print_info = () =>{
        form.addEventListener('submit', (e) => {
            e.preventDefault();
            console.log(start_date.value, end_date.value, todo_details.value);
        });
    }

    return (
        <div>

            <form className="todo-form">

                <div className="field">
                    <label>Start:</label>
                    <input type="date" id='sd'></input>
                </div>

                <div className="field">
                    <label>Due:</label>
                    <input type="date" id='ed'></input>
                </div>   

                <div className="field">
                    <label>Details:</label>
                    <input type="text" id='td'></input>
                </div>

                    <button onClick={ print_info }>Add</button>
            </form>
        </div>
    );
};

export default Input_field;