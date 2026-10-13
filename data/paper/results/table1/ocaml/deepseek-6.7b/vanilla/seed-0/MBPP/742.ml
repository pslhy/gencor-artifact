let rec area_tetrahedron (side : int) : float =
    if side < 0 then invalid_arg "Side length must be non-negative" else
    sqrt (float_of_int (10 * side * side)) *. 1.7320508075688772935274463415058783691262407753 / 4.0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
