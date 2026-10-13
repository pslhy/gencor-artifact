let rec strange_sort_list (lst : int list) : int list = 
    let rec find_min_max remain min max is_min = 
        match remain with
        | [] -> if is_min then min else max
        | x::xs -> 
            if is_min then
                if x < min then find_min_max xs x max false
                else find_min_max xs min max false
            else
                if x > max then find_min_max xs min x true
                else find_min_max xs min max true
    in
    let rec build strange_lst remain sorted =
        if remain = [] then strange_lst
        else
            let min = find_min_max remain Int.max_int Int.min_int true in
            let max = find_min_max remain Int.max_int Int.min_int false in
            build (min :: max :: strange_lst) (List.filter (fun x -> x <> min && x <> max) remain) sorted
    in
    build [] lst true


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
