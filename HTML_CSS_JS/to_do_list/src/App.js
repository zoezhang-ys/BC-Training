import './App.css';
import Input_field from './components/Input_field';
import Show_field from './components/show_field';
import Home from './components/Home';
function App() {
  return (
    <div className="App">
      <p>To do list:</p>
      {/* <Input_field /> */}
      <Input_field></Input_field> 
      {/* <Show_field /> */}
      <Home></Home>

    </div>
  );
}

export default App;
