let rec sort_sublists (input_list : string list list) : string list list =
  let comparator (a : string) (b : string) =
    match a < b with
    | true -> -1
    | false -> if a > b then 1 else 0
  in
  let rec helper (sublist : string list) =
    match sublist with
    | [] -> []
    | head :: tail ->
        let sorted_tail = List.sort comparator tail in
        head :: sorted_tail
  in
  List.map helper input_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
