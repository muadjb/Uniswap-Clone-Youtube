module Icon = {
  @react.component @module("react-icons/hi")
  external make: unit => React.element = "HiOutlineDotsVertical"
}

@react.component
let make = (~onClick) => {
  <div className="cursor-pointer" onClick> <Icon /> </div>
}
