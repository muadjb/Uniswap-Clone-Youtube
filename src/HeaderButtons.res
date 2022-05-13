@react.component
let make = () => {
  let buttonClasses = "bg-gray-800 border border-gray-900 hover:border-gray-700 h-full rounded-2xl px-2 py-1"

  <div className="flex gap-x-4 items-center text-xs text-white">
    <button
      type_="button"
      className={`flex items-center gap-x-1 cursor-pointer ${buttonClasses}`}
      onClick={_ => Js.log("eth button clicked")}>
      <EthImage width="12" /> <span> {"Ethereum"->React.string} </span> <AiOutlineDown />
    </button>
    <ConnectWalletButton className=buttonClasses />
    <HiOutlineDotsVertical className=buttonClasses onClick={_ => Js.log("clicked dots")} />
  </div>
}
