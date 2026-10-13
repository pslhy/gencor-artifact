let rec get_pairs_count (arr : int list) (sum : int) : int =
  match arr with
  | [] -> -1 (* If sum is not found, return -1 *)
  | head :: tail ->
    let rec find_pairs (lst : int list) : int =
      match lst with
      | [] -> 0
      | head' :: tail' ->
        if head + head' = sum then 1 + find_pairs tail'
        else find_pairs tail'
    in
    find_pairs tail + get_pairs_count tail sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
