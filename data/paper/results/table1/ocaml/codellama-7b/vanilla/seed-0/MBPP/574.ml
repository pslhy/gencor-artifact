let rec surfacearea_cylinder (r : int) (h : int) : float =
  let pi = 3.14 in
  let base = 2.0 *. pi *. (float_of_int r) in
  let height = float_of_int h in
  base +. (2.0 *. base *. height)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
