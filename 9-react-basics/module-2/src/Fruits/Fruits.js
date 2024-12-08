function Fruits( props ) {
    return (
        <div>
            {props.fruits.map(f => <p key={f.id} >{f.name}</p>)}
        </div>
    )
}

export default Fruits;