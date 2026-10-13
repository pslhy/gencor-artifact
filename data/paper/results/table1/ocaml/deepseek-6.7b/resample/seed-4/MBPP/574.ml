(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
    2. *. (System.Math.PI *. float(r)) *. (float(h) +. float(r))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "System" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
    2. *. (3.141592653589793 *. float(r)) *. (float(h) +. float(r))

