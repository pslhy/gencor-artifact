(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
let rec is_perfect_square (n : int) : bool =
  if n < 2 then true
  else if n % 2 = 0 then is_perfect_square (n / 2)
  else if n % 3 = 0 then is_perfect_square (n / 3)
  else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_perfect_square (n : int) : bool =
  if n < 2 then true
  else if n % 2 = 0 then is_perfect_square (n / 2)
  else if n % 3 = 0 then is_perfect_square (n / 3)
  else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_perfect_square (n : int) : bool =
  match n with
  | 1 | 0 -> true
  | _ ->
      let root = sqrt (float_of_int n) in
      let rec check k =
        k >= root && Float.((k *. k) -. float_of_int n) < 1e-6 in
      check 1 || check 2 || check 3

