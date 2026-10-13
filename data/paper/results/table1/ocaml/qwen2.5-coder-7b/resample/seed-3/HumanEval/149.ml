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
  let filter_odd_length (s : string) : bool = (String.length s) mod 2 = 0 in
  let filter_list = List.filter filter_odd_length lst in
  let rec sort_by_length_and_alpha (lst : string list) : string list =
    match lst with
    | [] -> []
    | x::xs -> 
      let smaller = List.filter (fun y -> String.length y < String.length x) xs in
      let same_length_sorted = List.sort stdlib.String.compare (List.filter (fun y -> String.length y = String.length x) xs) in
      x :: sort_by_length_and_alpha (smaller @ same_length_sorted)
  in
  sort_by_length_and_alpha filter_list

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:42: Unbound value "stdlib" *)
(*     Hint: Did you mean "stdin"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list = 
  let filter_odd_length (s : string) : bool = (String.length s) mod 2 = 0 in
  let filter_list = List.filter filter_odd_length lst in
  let rec sort_by_length_and_alpha (lst : string list) : string list =
    match lst with
    | [] -> []
    | x::xs -> 
      let smaller = List.filter (fun y -> String.length y < String.length x) xs in
      let same_length_sorted = List.sort String.compare (List.filter (fun y -> String.length y = String.length x) xs) in
      x :: sort_by_length_and_alpha (smaller @ same_length_sorted)
  in
  sort_by_length_and_alpha filter_list

