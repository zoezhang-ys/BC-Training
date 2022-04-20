import React from 'react'
import { Todo } from '../models/model';
import SingleToDo from './SingleToDo';
import './style.css'

interface Props {
    todos: Todo[];
    setTodos: React.Dispatch<React.SetStateAction<Todo[]>>;
}

const ToDoList = ({ todos, setTodos}: Props) => {
  return (
    <div className='todos'>
      {todos.map(todo => (

        <SingleToDo todo={todo} 
                    key={todo.id}
                    todos={todos}
                    setTodos={setTodos}
        
        />

      ))}
    </div>
  );
};

export default ToDoList