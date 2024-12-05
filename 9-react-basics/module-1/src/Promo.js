// function Promo(props) {
//     return (
//         <div className="promo-section">
//             <div>
//                 <h1>{props.heading}</h1>
//             </div>
//             <div>
//                 <h2>{props.promoSubHeading}</h2>
//             </div>
//         </div>
//     )
// }
//
// export default Promo;


// You can have styling in the component,
function Promo(props) {
    const styles = {
        color: "tomato",
        fontSize: "40px"
    }

    return (
        <div className="promo-section">
            <div>
                <h1 style={styles}>{props.heading}</h1>
            </div>
            <div>
                <h2>{props.promoSubHeading}</h2>
            </div>
        </div>
    )
}

export default Promo;