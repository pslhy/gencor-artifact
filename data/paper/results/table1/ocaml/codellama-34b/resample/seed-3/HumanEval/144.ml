(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)
let rec simplify (x : string) (n : string) : bool =
  if n = "1" then
    true
  else
    let x_num, x_den = x |> String.split_on_char '/' |> List.map int_of_string in
    let n_num, n_den = n |> String.split_on_char '/' |> List.map int_of_string in
    if x_den = 0 then 
      false
    else if n_num % x_den = 0 then
      let x_new = x_num * n_num / x_den in
      let n_new = n_num / x_den * n_den in
      simplify (Int.to_string x_new) (Int.to_string n_new)
    else
      false

