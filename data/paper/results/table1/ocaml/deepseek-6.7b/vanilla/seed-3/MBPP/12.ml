let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | x :: xs ->
        let sorted_rest = sort_matrix xs in
        let rec insert n l =
          match l with
          | [] -> [n]
          | y :: ys -> if sum_row n < sum_row y then n :: l else y :: insert n ys in
        insert x sorted_rest
and sum_row (r : int list) : int = List.fold_left (+) 0 r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
