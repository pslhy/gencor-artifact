let rec remove_elements (list1 : int list) (list2 : int list) : int list = 
  match list1 with
  | [] -> []
  | x::xs -> if List.mem x list2 then remove_elements xs list2 else x :: remove_elements xs list2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
