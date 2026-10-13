(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
let rec otherside_rightangle (w : int) (h : int) : float = 
    float( sqr(w) + sqr(h) )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound value "sqr" *)
(*     Hint: Did you mean "sqrt"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec otherside_rightangle (w : int) (h : int) : float =
    float (sqrt(w) + sqrt(h))

