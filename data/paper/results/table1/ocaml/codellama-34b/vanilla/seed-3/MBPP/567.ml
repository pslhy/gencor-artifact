let rec issort_list (list1 : int list) : bool =
  if list1 = [] || list1 = [e] then
    true
  else if list1[0] < list1[1] then
    issort_list(list1[1..])
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
