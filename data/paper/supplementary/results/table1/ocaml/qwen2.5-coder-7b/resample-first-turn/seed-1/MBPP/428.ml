let rec shell_sort (my_list : int list) : int list = 
  let rec insert (x: int) (lst: int list) : int list = 
    match lst with
    | [] -> [x]
    | h::t -> if x <= h then x :: h :: t else h :: (insert x t)
  and gap_sort (gap: int) (lst: int list) : int list = 
    match lst with
    | [] | [_] -> lst
    | h::t -> insert h (gap_sort gap t)
  in
  let rec sort_until_gap_one lst = 
    match lst with
    | [] | [_] -> lst
    | _ -> sort_until_gap_one (gap_sort 1 lst)
  and gap_sequence numbers =
    let rec acc m =
      match m with
      | n when n <= 1 -> [1]
      | _ -> n :: (acc (n / 2))
    in
    acc numbers
  in
  let gaps = gap_sequence (List.length my_list) in
  List.fold_right gap_sort gaps my_list;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
