let rec surfacearea_cylinder (r : int) (h : int) : float = 
  let area_base = Float.pi *. (float_of_int r) *. (float_of_int r) in
  let area_side = 2. *. Float.pi *. (float_of_int r) *. (float_of_int h) in
  2. *. area_base +. area_side;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
