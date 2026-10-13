let rec area_tetrahedron (side : int) : float = 
  let area_base = (sqrt 3.) *. (float_of_int (side * side)) in
  0.333333 *. area_base


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
