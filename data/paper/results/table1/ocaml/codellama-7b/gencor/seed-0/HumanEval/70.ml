
let rec strange_sort_list (lst : int list) : int list =
  match lst with
  | [] -> []
  | _ ->
    let minimum = List.hd lst in
    let maximum = List.fold_left Int.max minimum lst in
    minimum :: maximum :: strange_sort_list (List.filter (fun x -> x <> minimum && x <> maximum) lst)

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
