// https://www.typescriptlang.org/docs/
// https://www.youtube.com/watch?v=FJDVKeh7RJI

import React, { useState } from 'react';
import './App.css';
import InputField from './components/InputField';
import ToDoList from './components/ToDoList';
import { Todo } from './models/model';


// function App() {

const App: React.FC = () => {

  // initial state, with string as valid input and "" as initial value
  const [todo, setTodo] = useState<string>("");
  const [todos, setTodos] = useState<Todo[]>([]);

  const handleAdd = (e: React.FormEvent) => {
    e.preventDefault();
    
    if (todo){
      setTodos([...todos, {id: Date.now(), todo, isDone: false}]);
      setTodo("");
    }
  };

  console.log(todo);
  console.log(todos);

  return (
    <div className="App">
      <span className="heading">List Table</span>

      <InputField todo={todo} setTodo={setTodo} handleAdd={handleAdd}/>

      <ToDoList todos={todos} setTodos={setTodos}/>
    </div>
  );
}

export default App;
