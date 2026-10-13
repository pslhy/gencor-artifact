let rec strange_sort_list (lst : int list) : int list = 
  let rec find_min_max lst min max = 
    match lst with 
    | [] -> (min, max)
    | h::t -> 
        let (new_min, new_max) = 
          if h < min then (h, max) 
          else if h > max then (min, h) 
          else (min, max) 
        in find_min_max t new_min new_max 
  and build_list lst () = 
    match lst with 
    | [] -> []
    | _ -> 
        let (min, max) = find_min_max lst Int.max_int Int.min_int in
        let rec find_and_remove x lst = 
          match lst with 
          | [] -> []
          | h::t -> 
              if h = x then t 
              else h :: find_and_remove x t 
        in 
        min :: build_list (find_and_remove min lst) () :: 
        build_list (find_and_remove max (find_and_remove min lst)) () 
  in 
  build_list lst ()



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
