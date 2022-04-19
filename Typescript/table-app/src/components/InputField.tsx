import React from 'react';
import './style.css';

interface Props {
    todo: string;
    setTodo: React.Dispatch<React.SetStateAction<string>>;
    handleAdd:(e: React.FormEvent) => void;
}

// const InputField: React.FC<Props> = ({ todo, setTodo, handleAdd }) => {
const InputField = ({ todo, setTodo, handleAdd }: Props) => {
  return (
    <form className='input' onSubmit={(e) => {handleAdd(e)}}>
        <input type='input' 
            className='input_box' 
            placeholder='enter here..'
            value={todo}
            onChange={(e)=>setTodo(e.target.value)}
        >    
        </input>


        <button type='submit' className='input_submit'>
            Add
        </button>
    </form>
  )
}

export default InputField