(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
let rec sum_div (number : int) : int =
  if number = 1 then
    1
  else if number mod n = 0 then
    n + sum_div(n, number / n)
  else
    sum_div(n, number / n)

let divisors n =
  List.filter (fun (x : int) -> n mod x = 0) [1; number]
  |> List.map (fun (x : int) -> sum_div(n, x))

let sum_divisors (number : int) : int =
  divisors number

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int =
  if number = 1 then
    1
  else if number mod n = 0 then
    n + sum_div(n, number / n)
  else
    sum_div(n, number / n)

let divisors n =
  List.filter (fun (x : int) -> n mod x = 0) [1; number]
  |> List.map (fun (x : int) -> sum_div(n, x))

let sum_divisors number =
  divisors number
  |> List.fold_left (+) 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int =
  if number = 1 then
    1
  else if number mod n = 0 then
    n + sum_div(n, number / n)
  else
    sum_div(n, number / n)

let divisors n =
  List.filter (fun (x : int) -> n mod x = 0) [1; number]
  |> List.map (fun (x : int) -> sum_div(n, x))

let sum_divisors number =
  divisors number
  |> List.fold_left (+) 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int =
  if number = 1 then
    1
  else if number mod n = 0 then
    n + sum_div(n, number / n)
  else
    sum_div(n, number / n)

let divisors n =
  List.filter (fun (x : int) -> n mod x = 0) [1; number]
  |> List.map (fun (x : int) -> sum_div(n, x))

let sum_divisors number =
  divisors number
  |> List.fold_left (+) 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int =
  if number = 1 then
    1
  else if number mod n = 0 then
    n + sum_div(n, number / n)
  else
    sum_div(n, number / n)

let divisors n =
  List.filter (fun (x : int) -> x mod n = 0) [1; n]
  |> List.map (fun (x : int) -> sum_div(n, x))

let sum_divisors number =
  divisors number
  |> List.fold_left (+) 0

