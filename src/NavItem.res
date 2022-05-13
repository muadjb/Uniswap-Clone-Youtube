@react.component
let make = (~onClick, ~children, ~className="") => {
  <span className={`cursor-pointer font-medium rounded-3xl px-2 py-1 ${className}`} onClick>
    children
  </span>
}
