(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  if list1 = [] && list2 = [] && list3 = [] then 0
  else if List.hd list1 = List.hd list2 && List.hd list2 = List.hd list3 then 1 + (count_samepair (List.tl list1) (List.tl list2) (List.tl list3))
  else (count_samepair (List.tl list1) (List.tl list2) (List.tl list3))

let count_samepair list1 list2 list3 = count_samepair list1 list2 list3

