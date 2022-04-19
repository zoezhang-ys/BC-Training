import React from 'react'
import { Todo } from '../models/model';
import './style.css'

interface Props {
    todos: Todo[];
    setTodos: React.Dispatch<React.SetStateAction<Todo[]>>;
}

const ToDoList = ({ todos, setTodos}: Props) => {
  return (
    <div className='todos'>
      {todos.map(todo => (

        <li>{todo.todo}</li>
      ))}
    </div>
  );
};

export default ToDoList