(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float = 
    (* insert your code here *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    match (r, h) with
    | 0, 0 -> 0.0
    | _, 0 -> 0.0
    | r, h -> 2.0 * 3.14159 * r * h

