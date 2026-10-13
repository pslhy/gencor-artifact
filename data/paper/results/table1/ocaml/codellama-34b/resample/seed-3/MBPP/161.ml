(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
let rec remove_elements (list1 : int list) (list2 : int list) : int list =
  let rec helper (l1 : int list) (l2 : int list) : int list =
    match l1 with
    | [] -> []
    | x :: xs ->
      if List.mem x l2 then helper xs l2 else x :: helper xs l2
  in
  helper list1 list2

