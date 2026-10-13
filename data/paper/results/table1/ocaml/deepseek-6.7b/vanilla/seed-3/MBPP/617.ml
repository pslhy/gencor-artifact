let rec min_Jumps (steps :  int * int) (d : int) : float =
  match steps with
  | (0, 0) -> 0.0
  | (0, y) when y > 0 -> float_of_int(y / d)
  | (0, _) -> infinity
  | (x, y) when x > 0 && y > 0 -> float_of_int(y / d) + 1.0
  | (x, _) when x > 0 -> min_Jumps (x - d, 0) d
  | (_, y) -> min_Jumps (0, y - d) d


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
