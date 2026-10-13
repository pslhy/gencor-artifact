let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  let b_square = b * b in
  let four_a_c = 4 * a * c in
  let sq_root = sqrt (b_square - four_a_c) in
  ((b * (-1)) + sq_root) / (2 * a)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
