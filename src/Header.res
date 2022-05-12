@react.component
let make = () => {
  React.useEffect0(() => {
    Js.log("effect 0")
    None
  })

  <div className="flex justify-between items-center">
    <UniswapImage /> <Nav /> <HeaderButtons />
  </div>
}
