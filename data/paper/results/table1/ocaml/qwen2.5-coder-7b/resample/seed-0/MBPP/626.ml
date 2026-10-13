(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None 
  else Some (int_of_float ( acos (float (-1)) *. 0.5 *. (float_of_int r *. float_of_int r *. float_of_int r) *. 2.0 )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None 
  else Some (int_of_float ( acos (float (-1)) *. 0.5 *. (float_of_int r *. float_of_int r *. float_of_int r) *. 2.0))

