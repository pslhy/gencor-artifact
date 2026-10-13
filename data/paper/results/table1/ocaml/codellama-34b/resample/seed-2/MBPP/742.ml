(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
let rec area_tetrahedron (side : int) : float =
    side * side - (side - 1.0) * (side - 1.0) / 2.0

