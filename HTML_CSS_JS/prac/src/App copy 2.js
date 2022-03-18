import React, { useState } from 'react';

function App() {

  // define: [current state, function to update current state]
  
  /*
  const [count, setCount] = useState(() =>{
    return 4
  })
  */
  const [count, setCount] = useState(4)

  const [age, setAge] = useState(1998)

  const [name, setName] = useState('zoe')
      

  function decrementCount () {
    setCount(prevCount => prevCount - 1)
  }

  function incrementCount () {
    setCount(prevCount => prevCount + 1)
  }

  return (
    <div>
      <button onClick = {decrementCount}>-</button>
      <span>{count}</span>
      <button onClick = {incrementCount}>+</button>

      <br></br>
      <span>{name}</span>
      <span>{age}</span>
    </div>
  );
}

export default App;
