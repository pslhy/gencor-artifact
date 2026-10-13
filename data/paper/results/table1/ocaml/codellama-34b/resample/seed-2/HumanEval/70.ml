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
    | _ ->
        let min = List.min_elm lst in
        let max = List.max_elm (List.remove min lst) in
        min :: max :: strange_sort_list (List.remove min (List.remove max lst))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.min_elm" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec strange_sort_list (lst : int list) : int list =
    match lst with
    | [] -> []
    | x :: xs -> x :: strange_sort_list (List.filter (fun y -> y < x) xs)

