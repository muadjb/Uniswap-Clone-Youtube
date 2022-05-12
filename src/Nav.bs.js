// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as NavItem from "./NavItem.bs.js";
import * as Fi from "react-icons/fi";
import * as SelectedNav_Store from "./SelectedNav_Store.bs.js";

function Nav(Props) {
  return React.createElement("nav", {
              className: "flex items-center gap-x-4 py-2 px-4 bg-[#191B1F] rounded-3xl text-white text-sm"
            }, React.createElement(NavItem.make, {
                  onClick: (function (param) {
                      return Curry._1(SelectedNav_Store.dispatch, /* SetSelectedNav */{
                                  _0: /* Swap */0
                                });
                    }),
                  children: "Swap"
                }), React.createElement(NavItem.make, {
                  onClick: (function (param) {
                      return Curry._1(SelectedNav_Store.dispatch, /* SetSelectedNav */{
                                  _0: /* Pool */1
                                });
                    }),
                  children: "Pool"
                }), React.createElement(NavItem.make, {
                  onClick: (function (param) {
                      return Curry._1(SelectedNav_Store.dispatch, /* SetSelectedNav */{
                                  _0: /* Vote */2
                                });
                    }),
                  children: "Vote"
                }), React.createElement("a", {
                  className: "",
                  href: "https://info.uniswap.org/#/",
                  rel: "noopener noreferrer",
                  target: "_blank"
                }, React.createElement("div", {
                      className: "flex gap-x-1"
                    }, React.createElement("span", undefined, "Charts"), React.createElement(Fi.FiArrowUpRight, {}))));
}

var make = Nav;

export {
  make ,
  
}
/* react Not a pure module */
