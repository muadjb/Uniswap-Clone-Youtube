type t = {
  number: int,
  prime: int,
}

let make = (~number, ~prime) => {
  number >= prime || number < 0
    ? Error(
        `Number ${number->Belt.Int.toString} is not in field range 0 to ${prime->Belt.Int.toString}`,
      )
    : Ok({number: number, prime: prime})
}
