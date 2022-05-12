type state = {selectedNav: SelectedNav.t}

let initialState = {
  selectedNav: SelectedNav.Swap,
}

type action = SetSelectedNav(SelectedNav.t)

let reducer = (state, action) => {
  switch action {
  | SetSelectedNav(selectedNav) => {
      selectedNav: selectedNav,
    }
  }
}

let {Restorative.dispatch: dispatch, useStore, _} = Restorative.createStore(initialState, reducer)
