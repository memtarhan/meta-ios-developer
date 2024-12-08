import "./App.css";
import Homepage from "./Homepage";
import AboutLittleLemon from "./AboutLittleLemon";
import Contact from "./Contact";
import {Routes, Route, Link} from "react-router-dom";
import AboutMe from "./AboutMe";

function App() {
    return (
        <div className="App">
            <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
                <Link to="/#" className="nav-item">Homepage</Link>
                <Link to="/about-me" className="nav-item">About Me</Link>
            </nav>
            <Routes>
                <Route path="/" element={<Homepage/>}/>
                <Route path="/about-me" element={<AboutMe/>}/>
            </Routes>

        </div>
    );
};

export default App;
