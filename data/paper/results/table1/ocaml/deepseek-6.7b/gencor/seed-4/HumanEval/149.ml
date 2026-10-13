
let rec sorted_list_sum (lst : string list) : string list =
  match lst with
  | [] -> []
  | _ -> let add_sorted l1 l2 =
                match (l1, l2) with
                | ([], _) -> l2
                | (_, []) -> l1
                | (h1::t1, h2::t2) ->
                    if (String.length h1) < String.length h2 || ((String.length h1) = (String.length h2) && h1 < h2)
                    then h1::(sorted_list_sum t1 l2)
                    else h2::(sorted_list_sum l1 t2)
         in
        let rec split_list lst =
                match lst with
                | [] -> ([], [])
                | [h] -> ([h], [])
                | h::t -> let (l1, l2) = split_list t in
                          (h::l1, l2)
        in
        let (l1, l2) = split_list lst in
        add_sorted (sorted_list_sum l1) (sorted_list_sum l2)

let rec sorted_list lst : string list =
  let rec filtered_list lst =
    match lst with
    | [] -> []
    | h::t -> if (String.length h) mod 2 = 0 then h::(filtered_list t) else filtered_list t
  in
  filtered_list (sorted_list_sum (List.sort String.compare (filtered_list lst)))

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
