(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median length of a trapezium. *)
let rec median_trapezium (base1 : int) (base2 : int) (height : int) : float =
  if base1 >= 0 && base2 >= 0 && height > 0 then
    let trapezium_area = (base1 + base2) / 2 * height in
    let median = sqrt (trapezium_area * 2.0) in
    median
  else
    raise (Invalid_argument "Trapezium dimensions must be non-negative")

