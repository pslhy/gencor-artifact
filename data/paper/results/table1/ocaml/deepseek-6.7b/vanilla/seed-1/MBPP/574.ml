let rec surfacearea_cylinder (r : int) (h : int) : float =
  2. *. 3.14 *. (float_of_int r) *. ((float_of_int h) +. (float_of_int r))

(* example test case *)
let r = 4
let h = 10

surfacearea_cylinder r h;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
