let rec big_diff (nums : int list) : int =
  match nums with
  | [] -> 0
  | [x] -> 0
  | _ ->
    let largest = List.fold_left ( max ) 0 nums
    and smallest = List.fold_left ( min ) 0 nums
    in largest - smallest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
