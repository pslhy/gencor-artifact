let rec min_Jumps (steps :  int * int) (d : int) : float =
  match steps with
  | (x, y) when y > d -> (float_of_int (d+1)) *. 0.5 
  | (x, _) when x < d -> float_of_int (d - x) *. 0.5 +. 1.0 +. min_Jumps steps (d-x)
  | _ -> float_of_int (d) *. 0.5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
