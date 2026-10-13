let rec strange_sort_list (lst : int list) : int list = 
  let rec helper min_max lst acc =
    match lst with
      [] -> List.rev acc
    | x::xs when min_max = `Min -> 
        let min_val = List.min xs in
        helper `Max (List.remove min_val xs) (min_val :: acc)
    | x::xs -> 
        let max_val = List.max xs in
        helper `Min (List.remove max_val xs) (max_val :: acc)
  in
  helper `Min lst []


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
