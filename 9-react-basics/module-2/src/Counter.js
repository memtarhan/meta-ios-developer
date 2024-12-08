import {useMealsContext} from "./MealsProvider";

const Counter = () => {
    const { meals } = useMealsContext();

    return (
        <div>
            <h3>Number of meals today: { meals.length }</h3>
        </div>
    )
}

export default Counter;