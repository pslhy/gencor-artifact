let rec area_tetrahedron (side : int) : float =
  match side with
  | 0 -> 0.0
  | _ -> sqrt (float ((7 * (side ** 3)))) / 4.0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
