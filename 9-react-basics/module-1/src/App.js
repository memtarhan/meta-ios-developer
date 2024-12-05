import Heading from "./Heading";
import Promo from "./Promo";

function App() {
    return (
        <div className="App">
            <Heading firstName="Bob" lastName="Doe" message="Hello World"/>
            <Promo heading="Testinggg" promoSubHeading="Hello World"/>
        </div>
    );
}

export default App;