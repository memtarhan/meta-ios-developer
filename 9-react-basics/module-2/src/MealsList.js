import {useMealsContext} from "./MealsProvider";

const MealsList = () => {
    const {meals} = useMealsContext();

    return (
        <div>
            <h1>Meals List using Context API</h1>
            {meals.map((meal, index) => (
                <h2 key={index}>{meal}</h2>
            ))}
        </div>
    )
}

export default MealsList;