(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return a greatest common divisor of two integers a and b *)
(*     >>> greatest_common_divisor 3 5 *)
(*     1 *)
(*     >>> greatest_common_divisor 25 15 *)
(*     5 *)
let rec greatest_common_divisor (a : int) (b : int) : int =
  if b = 0 then
    a
  else
    greatest_common_divisor (mod a b) b

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:34: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec greatest_common_divisor (a : int) (b : int) : int =
  if a mod b = 0 then
    b
  else
    greatest_common_divisor a (b mod a)

