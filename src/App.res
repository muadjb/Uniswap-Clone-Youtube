type root
@module("react-dom/client") external createRoot: Dom.element => root = "createRoot"
@send external render: (root, React.element) => unit = "render"

switch ReactDOM.querySelector("#root") {
| Some(root) => root->createRoot->render(<Uniswap />)
| None => ()
}
