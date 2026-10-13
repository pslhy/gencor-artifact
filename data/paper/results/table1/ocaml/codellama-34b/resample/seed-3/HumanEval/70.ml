(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec strange_sort_list (lst : int list) : int list =
  if lst = [] then []
  else
    let min_idx = List.find_min (lst : int) in
    let max_idx = List.find_max (List.rev_filter (fun (x : int) -> x != min_idx) lst) in
    min_idx :: max_idx :: (strange_sort_list (List.filter (fun (x : int) -> x != min_idx && x != max_idx) lst)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  if lst = [] then []
  else
    let min_idx : int = List.find_min (lst : int) in
    let max_idx : int = List.find_max (List.rev_filter (fun (x : int) -> x <> min_idx) lst) in
    min_idx :: max_idx :: (strange_sort_list (List.filter (fun (x : int) -> x <> min_idx && x <> max_idx) lst))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Unbound value "List.find_min" *)
(*     Hint: Did you mean "find_map"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  if lst = [] then []
  else
    let min_idx : int = List.find_map (lst : int) in
    let max_idx : int = List.find_max (List.rev_filter (fun (x : int) -> x <> min_idx) lst) in
    min_idx :: max_idx :: (strange_sort_list (List.filter (fun (x : int) -> x <> min_idx && x <> max_idx) lst))

