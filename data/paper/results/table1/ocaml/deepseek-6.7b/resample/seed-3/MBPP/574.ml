(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
  2. *. (System.Math.PI *. (float_of_int r) *. (float_of_int h)) +. (2. *. (System.Math.PI *. (float_of_int r) ** 2.));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:10: Unbound module "System" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
  2. *. (Float.pi *. (float_of_int r) *. (float_of_int h)) +. (2. *. (Float.pi *. (float_of_int r) ** 2.));;

