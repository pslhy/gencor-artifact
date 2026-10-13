let rec count_Pairs (arr : int list) (n : int) : int =
  match (arr, n) with
  | (x :: xs, 0) -> count_Pairs xs 0
  | (x1 :: x2 :: xs, n) ->
    if x1 <> x2 then
      count_Pairs (x1 :: xs) (n - 1) + count_Pairs (x2 :: xs) (n - 1)
    else
      count_Pairs (x1 :: xs) (n - 1) + count_Pairs (x2 :: xs) (n - 1) + count_Pairs (xs) (n - 1)
  | _ -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
