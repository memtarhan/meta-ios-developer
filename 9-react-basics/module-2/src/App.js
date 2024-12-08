// import MyButton from "./MyButton";
// import ModeToggler from "./ModeToggler";

import InputComponent from "./InputComponent";
import {useState} from "react";
import Heading from "./Heading";

function App() {
    const [word, setWord] = useState("Eat");

    function handleClick() {
        setWord('Drink');
    }
    return (
        <div className="App">
            {/*<InputComponent/>*/}
            <Heading message={word + " at Little Lemon"}/>
            <button onClick={handleClick}>Click here</button>
        </div>
    );
}

export default App;
