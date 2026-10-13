(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
let rec otherside_rightangle (w : int) (h : int) : float =
  if w = 0 && h = 0 then raise (Invalid_argument "Cannot calculate a side of a right triangle with a length of 0")
  elif w = 0 || h = 0 then sqrt (w ** 2 + h ** 2)
  else sqrt (-(w ** 2 + h ** 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec otherside_rightangle (w : int) (h : int) : float =
  if w = 0 || h = 0 then sqrt (w ** 2 + h ** 2)
  else sqrt (-(w ** 2 + h ** 2))

