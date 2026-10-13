
let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | [] -> invalid_arg "List is empty"
  | [ _ ] -> invalid_arg "List contains only one element"
  | _ -> 
    let min_el = List.fold_left min Int.max_int arr in
    let max_el = List.fold_left max Int.min_int arr in
    max_el - min_el

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
