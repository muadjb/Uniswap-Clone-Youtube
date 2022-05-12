@react.component
let make = (~onClick, ~children) => {
  <span className="cursor-pointer font-medium rounded-3xl" onClick> children </span>
}
