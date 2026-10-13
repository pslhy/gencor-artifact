let rec area_tetrahedron (side : int) : float = 
    side *. sqrt((2. *. side*.side) - (side * side)) *. 1.0 / 6.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
