// function MyButton() {
//     const clickHandler = () => console.log('click');
//     return (
//         <button onClick={clickHandler}>
//             Click me
//         </button>
//     )
// }
//
// export default MyButton;

function MyButton() {
    const clickHandler = () => console.log('mouseOver');
    return (
        <button onMouseOver={clickHandler}>
            Click me
        </button>
    )
}

export default MyButton;