(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
let rec next_Perfect_Square (n : int) : int =
  let next = n + 1 in
  if square_of_int(next) then next else next_Perfect_Square(next)

let rec square_of_int (n : int) : bool =
  let number = float_of_int(n) in
  let square_root = int_of_float(sqrt(number)) in
  (square_root * square_root) = n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:6: Unbound value "square_of_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
  let next = n + 1 in
  match square_of_int next with
  | true -> next
  | false -> next_Perfect_Square next

and square_of_int (n : int) : bool =
  let number = float_of_int n in
  let square_root = int_of_float (sqrt number) in
  (square_root * square_root) = n

