let rec cummulative_sum (test_list : int list list) : int =
  match test_list with
  | [] -> []
  | [x] -> [x]
  | x :: xs ->
      let rec inner_sum (acc : int list) (test_list : int list) : int =
        match test_list with
        | [] -> acc
        | y :: ys -> inner_sum (acc + y) ys
      in
      inner_sum x xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
