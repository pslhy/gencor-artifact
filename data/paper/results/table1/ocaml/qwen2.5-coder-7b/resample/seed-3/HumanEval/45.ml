(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given length of a side and high return area for a triangle. *)
(*     >>> triangle_area 5 3 *)
(*     7.5 *)
let rec triangle_area (a : int) (h : int) : float = (a *. h) /.. 2.0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:1:62: Unbound value "(/..)" *)
(*     Hint: Did you mean "/."? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (a : int) (h : int) : float = (float (a * h)) /. 2.0

