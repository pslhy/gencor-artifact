let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | _ -> let add_sorted l1 l2 =
                match (l1, l2) with
                | ([], _) -> l2
                | (_, []) -> l1
                | (h1::t1, h2::t2) ->
                    if (String.length h1) % 2 = 0 && (String.length h2) % 2 = 0 then
                      sorted_list_sum (h1::t1 @ h2::t2)
                    else sorted_list_sum (if (String.length h1) % 2 = 0 then h1::t1 else h2::t2) @ 
                         (if (String.length h1) % 2 = 1 && (String.length h2) % 2 = 1 
                         then sorted_list_sum (h1::t1) @ sorted_list_sum (h2::t2) 
                         else [])                  

        in add_sorted (even_length_words lst) (odd_length_words lst)

and even_length_words (lst : string list) : string list =
  List.filter (fun x -> (String.length x) % 2 = 0) lst

and odd_length_words (lst : string list) : string list =
  List.filter (fun x -> (String.length x) % 2 = 1) lst;;

let rec merge (l1 : string list) (l2 : string list) : string list =
  match (l1, l2) with
  | ([], _) -> l2
  | (_, []) -> l1
  | (h1::t1, h2::t2) ->
      if (String.length h1) > (String.length h2) then [h1] @ merge t1 (h2::t2)
      else if (String.length h1) < (String.length h2) then [h2] @ merge l1 t2
      else if h1 < h2 then [h1] @ merge t1 (h2::t2)
      else [h2] @ merge (h1::t1) t2

and sort_by_length (lst : string list) : string list =
  merge (sorted_list_sum (even_length_words lst)) (sorted_list_sum (odd_length_words lst));;


list_sort ["aa"; "a"; "aaa"]
list_sort ["ab"; "a"; "aaa"; "cd"]


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
