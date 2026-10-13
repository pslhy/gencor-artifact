let rec strange_sort_list (lst : int list) : int list = 
  let rec helper (lst : int list) (min_max : bool) : int list =
    match lst with
    | [] -> []
    | x :: xs ->
        if min_max then
          let (min_val, rest) = List.fold_left 
            (fun (a, b) y -> if y < a then (y, a :: b) else (a, y :: b)) 
            (x, []) xs in
          min_val :: helper rest (not min_max)
        else
          let (max_val, rest) = List.fold_left 
            (fun (a, b) y -> if y > a then (y, a :: b) else (a, y :: b)) 
            (x, []) xs in
          max_val :: helper rest (not min_max)
  in helper lst true


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
