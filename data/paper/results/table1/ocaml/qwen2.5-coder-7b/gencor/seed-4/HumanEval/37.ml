
let rec sort_even (l : int list) : int list = 
  let rec sort_sublist (lst : int list) : int list = 
    match lst with
    | [] | [_] -> lst
    | _ -> let rec find_min lst acc = 
            match lst with
            | [] -> acc
            | x::xs ->
                if x < acc then find_min xs x
                else find_min xs acc in
          let min = find_min lst Int.max_int in
          let lst' = List.filter (fun x -> x <> min) lst in
          min :: sort_sublist lst' in
  let rec insert_sorted lst x =
    match lst with
    | [] | [_] -> [x]
    | h::t when x <= h -> x :: h :: t
    | h::t -> h :: insert_sorted t x in
  let rec merge_sorted_lists lst1 lst2 =
    match lst1, lst2 with
    | [], [] -> []
    | l1, [] -> l1
    | [], l2 -> l2
    | h1::t1, h2::t2 when h1 <= h2 -> h1 :: merge_sorted_lists t1 lst2
    | h1::t1, h2::t2 -> h2 :: merge_sorted_lists lst1 t2 in
  let even_indices = 
    List.mapi (fun i x -> if i mod 2 = 0 then x else Int.max_int) l in
  let sorted_evens = sort_sublist even_indices in
  let odd_indices = 
    List.mapi (fun i x -> if i mod 2 = 1 then x else Int.max_int) l in
  let interleaved =
    merge_sorted_lists (List.filter_map (fun i -> List.nth_opt even_indices i) (List.filter (fun i -> i mod 2 = 0) (List.length l)))
                         (List.filter_map (fun i -> List.nth_opt odd_indices i) (List.filter (fun i -> i mod 2 = 1) (List.length l))) in
  interleaved

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
