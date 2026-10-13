(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
let rec surfacearea_cylinder (r : int) (h : int) : float = 
    (* insert your code here *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
    let pi = 3.14 in
    let side = 2 * pi * r * h in
    let top = pi * r * r in
    let bottom = pi * r * r in
    let total = side +. top +. bottom in
    total

