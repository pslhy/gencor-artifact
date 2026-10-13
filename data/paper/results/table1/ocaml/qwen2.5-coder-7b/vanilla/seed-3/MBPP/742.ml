let rec area_tetrahedron (side : int) : float = 
  let sqrt_3 = sqrt 3.0 in
  side *. side *. sqrt_3 /. 4.0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
