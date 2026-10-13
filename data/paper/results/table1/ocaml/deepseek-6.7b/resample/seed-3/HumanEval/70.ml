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
  match lst with
  | [] -> []
  | _ -> List.hd_exn (List.sort_by lst ~compare:(-)) :: strange_sort_list (List.tl_exn lst)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Unbound value "List.hd_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | _ -> List.hd_exn (List.sort_by lst ~compare:(-)) :: strange_sort_list (List.tl_exn lst)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Unbound value "List.hd_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | _ -> (List.hd_exn lst) :: (strange_sort_list (List.tl_exn lst))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "List.hd_exn" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | _ -> (List.hd lst) :: (strange_sort_list (List.tl lst))

