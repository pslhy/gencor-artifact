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
  if lst = []
  then []
  else
    let sorted_list : string list = List.sort compare lst in
    let removed_list : string list = List.filter (( =) 0) (List.map string_length sorted_list) in
    let result_list : string list = List.remove_all removed_list sorted_list in
    sorted_list_sum result_list
  ]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl ->
  let sorted_list = List.sort compare lst in
  let removed_list = List.filter (( =) 0) (List.map string_length sorted_list) in
  let result_list = List.remove_all removed_list sorted_list in
  sorted_list_sum result_list

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:53: Unbound value "string_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl ->
  let sorted_list = List.sort compare lst in
  let removed_list = List.filter (( =) 0) (List.map String.length sorted_list) in
  let result_list = List.remove_all removed_list sorted_list in
  sorted_list_sum result_list

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:21: Unbound value "List.remove_all" *)
(*     Hint: Did you mean "remove_assq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl ->
    let sorted_list = List.sort compare lst in
    let removed_list = List.filter (( =) 0) (List.map String.length sorted_list) in
    let result_list = List.remove_all removed_list sorted_list in
    sorted_list_sum result_list

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:23: Unbound value "List.remove_all" *)
(*     Hint: Did you mean "remove_assq"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | hd :: tl ->
    let sorted_list = List.sort compare lst in
    let removed_list = List.filter (( =) 0) (List.map String.length sorted_list) in
    let result_list = List.remove_all removed_list sorted_list in
    sorted_list_sum result_list

