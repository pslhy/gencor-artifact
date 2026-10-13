let rec strange_sort_list (lst : int list) : int list = 
  let sorted_lst = List.sort compare lst in
  let rec helper min_max lst acc =
    match min_max, lst with
    | Max, x::y::tail -> helper Min y (x::acc)
    | Min, x::y::tail -> helper Max y (acc@[y; x])
    | _, [] -> acc
    | _, _ -> acc
  in
  let max_or_min = match sorted_lst with
    | [] -> failwith "Empty list"
    | x::_ -> if x = List.last sorted_lst then Min else Max
  in
  helper max_or_min sorted_lst []


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
