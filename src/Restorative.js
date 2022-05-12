

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";

function createStore(initialState, reducer) {
  var state = {
    contents: initialState
  };
  var listeners = {
    contents: []
  };
  var getState = function (param) {
    return state.contents;
  };
  var dispatch = function (action) {
    state.contents = Curry._2(reducer, state.contents, action);
    listeners.contents.forEach(function (listener) {
          return Curry._1(listener, undefined);
        });
    
  };
  var subscribe = function (listener, areEqualOpt, param) {
    var areEqual = areEqualOpt !== undefined ? areEqualOpt : (function (prim0, prim1) {
          return Object.is(prim0, prim1);
        });
    var currentState = {
      contents: state.contents
    };
    var listenerFn = function (param) {
      var state$1 = state.contents;
      if (!Curry._2(areEqual, state$1, currentState.contents)) {
        Curry._1(listener, state$1);
        currentState.contents = state$1;
        return ;
      }
      
    };
    listeners.contents = listeners.contents.concat([listenerFn]);
    return function (param) {
      listeners.contents = listeners.contents.filter(function (l) {
            return l !== listenerFn;
          });
      
    };
  };
  var useStore = function (areEqual, param) {
    var match = React.useState(function () {
          return 1;
        });
    var forceUpdate = match[1];
    React.useLayoutEffect((function () {
            var unsubscribe = subscribe((function (param) {
                    return Curry._1(forceUpdate, (function (x) {
                                  return x + 1 | 0;
                                }));
                  }), areEqual, undefined);
            Curry._1(forceUpdate, (function (x) {
                    return x + 1 | 0;
                  }));
            return (function (param) {
                      return Curry._1(unsubscribe, undefined);
                    });
          }), []);
    return state.contents;
  };
  return {
          getState: getState,
          subscribe: subscribe,
          dispatch: dispatch,
          useStore: useStore
        };
}

export {
  createStore ,
  
}
/* react Not a pure module */
