function Heading(props) {
    return (
        <div>
            <h1>Hello, {props.firstName} {props.lastName}</h1>
            <h2>{props.message}</h2>
        </div>

    )
}

export default Heading;
