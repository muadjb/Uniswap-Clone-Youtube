module Icon = {
  @react.component @module("react-icons/hi")
  external make: unit => React.element = "HiOutlineDotsVertical"
}

@react.component
let make = (~onClick, ~className="") => {
  <div className={`cursor-pointer ${className}`} onClick> <Icon /> </div>
}
