
let rec strange_sort_list (lst : int list) : int list =
    match lst with
    | [] -> []
    | _ ->
        let min = List.hd lst in
        let max = List.fold_left (fun acc x -> if acc < x then x else acc) min lst in
        let lst' = List.filter (fun x -> x <> min && x <> max) lst in
        min :: (if lst' = [] then [] else max :: (strange_sort_list lst'))

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
