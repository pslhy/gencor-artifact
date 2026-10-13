let rec pair_wise (l1 : int list) :  (int * int) list = match (l1, l1) with 
    ([], []) -> []
  | (_, []) -> []
  | (x::xs, y::ys) -> (x, y) :: (pair_wise xs ys)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return a list of all pairs of consecutive items in a given list. *)
