let rec sorted_list_sum (lst : string list) : string list = 
  let rec filter_odd_length (lst : string list) : string list =
    List.filter (fun x -> String.length x land 1 = 0) lst
  in
  let rec sort_by_length (lst : string list) : string list =
    let rec extract_min (lst : string list) : string * string list =
      List.fold_left (fun (min, rest) x ->
        if String.length x < String.length min then (x, rest) else (min, x :: rest)
      ) (List.hd lst, List.tl lst) lst
    in
    match lst with
    | [] -> []
    | _ ->
      let min, rest = extract_min lst in
      min :: sort_by_length rest
  in
  let rec sort_alphabetically (lst : string list) : string list =
    List.sort String.compare lst
  in
  lst
  |> filter_odd_length
  |> sort_by_length
  |> sort_alphabetically


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
