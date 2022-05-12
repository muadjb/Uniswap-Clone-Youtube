@react.component
let make = () => {
  <div
    className="flex items-center gap-x-1 cursor-pointer"
    onClick={_ => Js.log("connect wallet button clicked")}>
    <span> {"Connect Wallet"->React.string} </span>
  </div>
}
