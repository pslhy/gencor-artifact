let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | h::t -> let len = String.length h in
    (List.filter (fun el -> String.length el == len) t) @ sorted_list_sum (List.filter (fun el -> String.length el != len) t)

let list_sort (lst : string list) : string list =
  let sorted_lst = List.sort (fun a b -> String.compare a b) lst in
  let sorted_odd_lst = List.filter (fun str -> String.length str mod 2 = 0) sorted_lst in
  sorted_list_sum sorted_odd_lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
