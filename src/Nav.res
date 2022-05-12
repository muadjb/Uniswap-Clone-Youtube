@react.component
let make = () => {
  <nav className="flex items-center gap-x-4 py-2 px-4 bg-[#191B1F] rounded-3xl text-white text-sm">
    <NavItem onClick={_ => SelectedNav_Store.dispatch(SetSelectedNav(SelectedNav.Swap))}>
      {"Swap"->React.string}
    </NavItem>
    <NavItem onClick={_ => SelectedNav_Store.dispatch(SetSelectedNav(SelectedNav.Pool))}>
      {"Pool"->React.string}
    </NavItem>
    <NavItem onClick={_ => SelectedNav_Store.dispatch(SetSelectedNav(SelectedNav.Vote))}>
      {"Vote"->React.string}
    </NavItem>
    <a className="" href="https://info.uniswap.org/#/" target="_blank" rel="noopener noreferrer">
      <div className="flex gap-x-1">
        <span> {"Charts"->React.string} </span> <FiArrowUpRight />
      </div>
    </a>
  </nav>
}
