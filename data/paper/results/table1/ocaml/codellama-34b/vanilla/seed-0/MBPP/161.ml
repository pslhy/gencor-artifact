let rec remove_elements (list1 : int list) (list2 : int list) : int list =
    match list2 with
    | [] -> list1
    | x :: xs -> remove_elements (List.filter (fun y -> y != x) list1) xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
