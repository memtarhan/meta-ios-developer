import "./App.css";
import Homepage from "./Homepage";
import AboutLittleLemon from "./AboutLittleLemon";
import Contact from "./Contact";
import {Routes, Route, Link} from "react-router-dom";
import AboutMe from "./AboutMe";
import MyVideo from "./MyVideo";

function App() {
    // return (
    //     <div className="App">
    //         <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
    //             <Link to="/#" className="nav-item">Homepage</Link>
    //             <Link to="/about-me" className="nav-item">About Me</Link>
    //         </nav>
    //         <Routes>
    //             <Route path="/" element={<Homepage/>}/>
    //             <Route path="/about-me" element={<AboutMe/>}/>
    //         </Routes>
    //
    //     </div>
    // );
    // return (
    //     <div>
    //         <MyVideo />
    //     </div>
    // );

    const bird1 = new Audio(
        "https://upload.wikimedia.org/wikipedia/commons/9/9b/Hydroprogne_caspia_-_Caspian_Tern_XC432679.mp3"
    );

    const bird2 = new Audio(
        "https://upload.wikimedia.org/wikipedia/commons/b/b5/Hydroprogne_caspia_-_Caspian_Tern_XC432881.mp3"
    );

    function toggle1() {
        if (bird1.paused) {
            bird1.play().then(r => {});
        } else {
            bird1.pause();
        }
    }

    function toggle2() {
        if (bird2.paused) {
            bird2.play().then(r => {});
        } else {
            bird2.pause();
        }
    };

    return (
        <div>
            <button onClick={toggle1}>Caspian Tern 1</button>
            <button onClick={toggle2}>Caspian Tern 2</button>
        </div>
    );
}

export default App;
