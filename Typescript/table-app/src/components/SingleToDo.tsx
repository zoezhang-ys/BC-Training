import React, { useState, useRef, useEffect } from 'react'
import { Todo } from '../models/model';
// https://react-icons.github.io/react-icons/
import { AiFillEdit, AiFillDelete } from "react-icons/ai";
import { MdDone } from "react-icons/md";
import ToDoList from './ToDoList';

interface Props {
    todo: Todo;
    todos: Todo[];
    setTodos: React.Dispatch<React.SetStateAction<Todo[]>>;
}

const SingleToDo = ({todo, todos, setTodos}:Props) => {

    const [edit, setEdit] = useState<boolean>(false);
    const [editTodo, setEditTodo] = useState<string>(todo.todo);


    const handleEdit = (e: React.FormEvent, id: number) => {
        e.preventDefault();
        setTodos(
            todos.map((todo) => (
                id === todo.id ? {...todo, todo: editTodo } : todo
            ))
        );
        setEdit(false);
    };

    const handleDone = (id: number) => {
        setTodos(
            todos.map((todo) => (
                id === todo.id ? {...todo, isDone: !todo.isDone } : todo
            ))
        );
    };

    const handleDel = (id: number) => {
        setTodos(
            todos.filter((todo) => (
                id !== todo.id ))
        );
    };
    

    const inputRef = useRef<HTMLInputElement>(null);
    useEffect(() => {
        inputRef.current?.focus();
      }, [edit]);


    return (
        <div>
            <form className='todos_single' onSubmit={(e) => handleEdit(e, todo.id)}>

                {
                    edit ? (
                        <input className='todos_single-text'
                        value={editTodo}
                        onChange={(e)=>setEditTodo(e.target.value)}
                        
                        
                        />
                    ) : (todo.isDone ? (
                            <s className='todos_single-text'>{todo.todo}</s>
                        ) : (
                            <span className='todos_single-text'>{todo.todo}</span>
                        )
                    )
                }


                <span className="icon" 
                    onClick={(e) => {
                        if (!edit && !todo.isDone){
                           setEdit(!edit)
                        }else if (edit && !todo.isDone){
                            handleEdit(e,todo.id)
                        }
                    }}>
                    <AiFillEdit />
                </span>
                <span className="icon" onClick={() => handleDone(todo.id)}><MdDone /></span>
                <span className="icon" onClick={() => handleDel(todo.id)}><AiFillDelete /></span>

            </form>
        </div>
    )
}

export default SingleToDo