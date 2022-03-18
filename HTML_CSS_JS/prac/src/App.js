import React, { useState, useEffect } from 'react';

function App() {

  const [val, setVal] = useState('default')
  const [ww, setWw] = useState(window.innerWidth)


  // when ever the [val] has changed, the function runs
  useEffect(() => {
    console.log("effect applied")
  }, [val])
  
  function handleWw () {
    setWw(window.innerWidth)
  }

  useEffect(() => {
    window.addEventListener("resize", handleWw)


    return () => {
      window.addEventListener("resize", handleWw)
    }
  }, [])


  return (
    <div>
      <button onClick = {() => setVal('1')}>1</button>
      <button onClick = {() => setVal('2')}>2</button>
      <button onClick = {() => setVal('3')}>3</button>

      <br></br>
      <h1>{val}</h1>
      <br></br>
      <h1>{ww}</h1>
    </div>
  );
}

export default App;
