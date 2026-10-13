
let rec strange_sort_list (lst : int list) : int list =
  if lst = [] then []
  else
    let min_idx = List.find_index (fun x -> x = List.fold_left min max_int lst) lst in
    let min_val = List.nth lst min_idx in
    let max_idx = List.find_index (fun x -> x = List.fold_left max min_int (List.remove_assoc min_idx lst)) lst in
    let max_val = List.nth lst max_idx in
    min_val :: max_val :: strange_sort_list (List.remove_assoc min_idx (List.remove_assoc max_idx lst))

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
