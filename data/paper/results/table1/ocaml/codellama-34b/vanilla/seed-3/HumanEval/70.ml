let rec strange_sort_list (lst : int list) : int list =
  if lst = [] then []
  else
    let min_idx = List.find_min (lst : int) in
    let max_idx = List.find_max (List.rev_filter (fun (x : int) -> x != min_idx) lst) in
    min_idx :: max_idx :: (strange_sort_list (List.filter (fun (x : int) -> x != min_idx && x != max_idx) lst)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given list of integers, return list in strange order. *)
(*     Strange sorting, is when you start with the minimum value, *)
(*     then maximum of the remaining integers, then minimum and so on. *)
(*     Examples: *)
(*     >>> strange_sort_list [1; 2; 3; 4] *)
(*     [1; 4; 2; 3] *)
(*     >>> strange_sort_list [5; 5; 5; 5] *)
(*     [5; 5; 5; 5] *)
(*     >>> strange_sort_list [] *)
(*     [] *)
