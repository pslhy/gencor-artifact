let rec max_sum_list (lists : int list list) : int list =
  match lists with
  | [] -> []
  | hd :: tl ->
    let sum = List.fold_left ( + ) 0 hd
    in if sum > List.fold_left ( + ) 0 (max_sum_list tl) then hd else max_sum_list tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
