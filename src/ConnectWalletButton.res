@react.component
let make = (~className="") => {
  <button
    type_="button"
    className={`flex items-center gap-x-1 cursor-pointer ${className}`}
    onClick={_ => Js.log("connect wallet button clicked")}>
    <span> {"Connect Wallet"->React.string} </span>
  </button>
}
