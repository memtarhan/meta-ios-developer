// Function Expressions

// Let’s start with a function declaration used as a component in React:

function Nav1(props) {
    return (
        <ul>
            <li>{props.first}</li>
        </ul>
    )
}

const Nav2 = function(props) {
    return (
        <ul>
            <li>{props.first}</li>
        </ul>
    )
}

// Changing a component from a function declaration to a function expression doesn't change its behavior,
// or how you write the code to render the Nav component. It's still the same:
// <Nav first="Home" />

// Components as Arrow Functions

const Nav3 = (props) => {
    return (
        <ul>
            <li>{props.first}</li>
        </ul>
    )
}

// So, the way to think about this is the following:
//
// The arrow itself can be thought of as the replacement for the function keyword.
// The parameters that this arrow function accepts are listed before the arrow itself. 