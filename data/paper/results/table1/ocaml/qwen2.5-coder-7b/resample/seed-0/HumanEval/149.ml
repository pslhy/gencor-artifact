(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings as a parameter, *)
(*     deletes the strings that have odd lengths from it, *)
(*     and returns the resulted list with a sorted order, *)
(*     The list is always a list of strings and never a list of numbers, *)
(*     and it may contain duplicates. *)
(*     The order of the list should be ascending by length of each word, and you *)
(*     should return the list sorted by that rule. *)
(*     If two words have the same length, sort the list alphabetically. *)
(*     The function should return a list of strings in sorted order. *)
(*     You may assume that all words will have the same length. *)
(*     For example: *)
(*     >>> list_sort ["aa"; "a"; "aaa"] *)
(*     ["aa"] *)
(*     >>> list_sort ["ab"; "a"; "aaa"; "cd"] *)
(*     ["ab"; "cd"] *)
let rec sorted_list_sum (lst : string list) : string list = 
  let filtered = List.filter (fun x -> String.length x % 2 = 0) lst in
  let rec merge_sort lst = 
    let rec split lst n acc1 acc2 = 
      match lst with
      | [] -> (List.rev acc1, List.rev acc2)
      | x::xs -> if n mod 2 = 0 then split xs (n + 1) (x::acc1) acc2 else split xs (n + 1) acc1 (x::acc2)
    in
    let rec merge acc1 acc2 = 
      match (acc1, acc2) with
      | ([], acc2) -> List.rev acc2
      | (acc1, []) -> List.rev acc1
      | (x::xs, y::ys) -> if String.length x <= String.length y then x::(merge xs acc2) else y::(merge acc1 ys)
    in
    match lst with
    | [] -> []
    | [_] -> lst
    | _ -> let (left, right) = split lst 0 [] [] in merge (merge_sort left) (merge_sort right)
  in
  merge_sort filtered

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:56: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list = 
  let filtered = List.filter (fun x -> String.length x land 1 = 0) lst in
  let rec merge_sort lst = 
    let rec split lst n acc1 acc2 = 
      match lst with
      | [] -> (List.rev acc1, List.rev acc2)
      | x::xs -> if n land 1 = 0 then split xs (n + 1) (x::acc1) acc2 else split xs (n + 1) acc1 (x::acc2)
    in
    let rec merge acc1 acc2 = 
      match (acc1, acc2) with
      | ([], acc2) -> List.rev acc2
      | (acc1, []) -> List.rev acc1
      | (x::xs, y::ys) -> if String.length x <= String.length y then x::(merge xs acc2) else y::(merge acc1 ys)
    in
    match lst with
    | [] -> []
    | [_] -> lst
    | _ -> let (left, right) = split lst 0 [] [] in merge (merge_sort left) (merge_sort right)
  in
  merge_sort filtered

