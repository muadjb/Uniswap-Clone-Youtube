// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";

function NavItem(Props) {
  var onClick = Props.onClick;
  var children = Props.children;
  var classNameOpt = Props.className;
  var className = classNameOpt !== undefined ? classNameOpt : "";
  return React.createElement("span", {
              className: "cursor-pointer font-medium rounded-3xl px-2 py-1 " + className,
              onClick: onClick
            }, children);
}

var make = NavItem;

export {
  make ,
  
}
/* react Not a pure module */
