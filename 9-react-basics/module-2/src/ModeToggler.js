function ModeToggler() {
    let darkModeOn = true;
    const darkMode = <h1>Dark Mode is On</h1>
    const lightMode = <h1>Light Mode is On</h1>

    function handleClick() {
        darkModeOn = !darkModeOn;
        if (darkModeOn === true) {
            console.log('Dark Mode is On');

        } else {
            console.log('Light Mode is On');
        }
    }
    return (
        <div>
            {darkModeOn ? darkMode : lightMode}
            <button onClick={handleClick}>Toggle Dark Mode</button>
        </div>
    )
}

export default ModeToggler;