let rec max_sum_list (lists : int list list) : int list =
  let rec helper (lists : int list list) (current_max : int) (current_max_list : int list) : int list =
    match lists with
    | [] -> current_max_list
    | head :: tail ->
        let sum = List.fold_left (+) 0 head in
        if sum > current_max then
          helper tail sum head
        else
          helper tail current_max current_max_list
  in
  helper lists 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
