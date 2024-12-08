// import MyButton from "./MyButton";
// import ModeToggler from "./ModeToggler";

import InputComponent from "./InputComponent";
import {useState} from "react";
import Heading from "./Heading";
import Main from "./MoreComponents";
import MealsProvider from "./MealsProvider";
import MealsList from "./MealsList";
import Counter from "./Counter";

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

    return (
        <div>
            <MealsProvider>
                <MealsList />
                <Counter />
            </MealsProvider>
        </div>
    )
}

export default App;
