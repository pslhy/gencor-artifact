let rec max_sum_list (lists : int list list) : int list =
  match lists with
  | [] -> []
  | [list] -> list
  | list :: lists' ->
    let list_sum = List.fold_left (+) 0 list in
    let lists_sum = List.fold_left (+) 0 (max_sum_list lists') in
    if list_sum > lists_sum then list else max_sum_list lists'


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
