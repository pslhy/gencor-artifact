let rec max_occurrences (nums : int list) : int =
  let occurrences_of x = List.length (List.filter (fun y -> y = x) nums) in
  match nums with
  | [] -> raise Not_found
  | hd::tl ->
     let max_rest = max_occurrences tl in
     if occurrences_of hd > occurrences_of max_rest then hd
     else max_rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
