@react.component
let make = () => {
  <div className="flex gap-x-4 items-center">
    <div
      className="flex items-center gap-x-1 cursor-pointer"
      onClick={_ => Js.log("eth button clicked")}>
      <EthImage /> <span> {"Ethereum"->React.string} </span> <AiOutlineDown />
    </div>
    <HiOutlineDotsVertical onClick={_ => Js.log("clicked dots")} />
  </div>
}
