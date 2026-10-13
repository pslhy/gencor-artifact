let rec area_tetrahedron (side : int) : float =
  if side <= 0 then
    invalid_arg "Side length must be greater than 0."
  else
    sqrt (2 * (sqrt (6 * (float_of_int side ** 3) + sqrt (24 * (float_of_int side ** 6) + (18 * (float_of_int side ** 4) + (12 * (float_of_int side ** 2) + 3)))))) / 4.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
