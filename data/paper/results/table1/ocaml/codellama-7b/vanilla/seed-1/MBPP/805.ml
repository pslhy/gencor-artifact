let rec max_sum_list (lists : int list list) : int list =
  match lists with
  | [] -> []
  | x :: xs ->
    let sum = List.fold_left (+) 0 x in
    let max_sum = if List.length xs = 0 then sum else max sum (max_sum_list xs) in
    if sum = max_sum then x else max_sum_list xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
