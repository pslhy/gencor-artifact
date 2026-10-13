let rec max_sum_list (lists : int list list) : int list =
  let rec aux xs acc max_sum max_list =
    match xs with
    | [] -> max_list
    | x::xs ->
      let sum = List.fold_left ( + ) 0 x + acc in
      let max_list = if sum > max_sum then x else max_list in
      let max_sum = if sum > max_sum then sum else max_sum in
      aux xs acc max_sum max_list
  in
  match lists with
  | [] -> []
  | list::lists -> aux list 0 (List.fold_left ( + ) 0 list) list (aux lists 0 0 list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
