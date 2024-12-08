// import MyButton from "./MyButton";
// import ModeToggler from "./ModeToggler";

import InputComponent from "./InputComponent";
import React, {useState} from "react";
import Heading from "./Heading";
import Main from "./MoreComponents";
import MealsProvider from "./MealsProvider";
import MealsList from "./MealsList";
import Counter from "./Counter";
import Fruits from "./Fruits/Fruits";
import FruitsCounter from "./Fruits/FruitsCounter";

function App() {
    const [word, setWord] = useState("Eat");

    function handleClick() {
        setWord('Drink');
    }

    // return (
    //     <div className="App">
    //         {/*<InputComponent/>*/}
    //         {/*<Heading message={word + " at Little Lemon"}/>*/}
    //         {/*<button onClick={handleClick}>Click here</button>*/}
    //         <Main
    //             msg="I passed through the Header and the Wrapper and I reached the Button component"
    //         />
    //     </div>
    // );

    // return (
    //     <div>
    //         <MealsProvider>
    //             <MealsList />
    //             <Counter />
    //         </MealsProvider>
    //     </div>
    // )

    const [fruits] = React.useState([
        {name: 'apple', id: 1},
        {name: 'banana', id: 2},
        {name: 'orange', id: 3}
    ]);

    return (
        <div className="App">
            <h1>Where should the state go?</h1>
            <Fruits fruits={fruits} />
            <FruitsCounter fruits={fruits} />
        </div>
    )
}

export default App;
