let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl -> (hd :: sorted_list_sum (List.filter (fun x -> String.length x = String.length hd) tl))
                |> List.sort_uniq (fun x y -> String.compare x y)

let list_sort (lst : string list) : string list =
  let len_set = List.sort_uniq (List.map String.length) (List.sort_uniq String.length lst) in
  let sorted_lst = List.map (fun x -> sorted_list_sum (List.filter (fun y -> String.length y = x) lst)) len_set in
  List.flatten sorted_lst


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
