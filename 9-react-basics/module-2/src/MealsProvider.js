import React from "react";

const MealsContext = React.createContext();

const todayMeals = ["Based Beans", "Baked Sweet Potatoes", "Based Potatoes"];

const MealsProvider = ({children}) => {
    const [meals, setMeals] = React.useState(todayMeals);

    return (
        <MealsContext.Provider value={{meals}}> {children}</MealsContext.Provider>
    )
}

export const useMealsContext = () => React.useContext(MealsContext);
export default MealsProvider;