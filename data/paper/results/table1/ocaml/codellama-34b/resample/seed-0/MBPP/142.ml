(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  match list1, list2, list3 with
  | [], [], [] -> 0
  | [], _ -> 0
  | _, [] -> 0
  | _, _, [] -> 0
  | h1::t1, h2::t2, h3::t3 ->
      if h1 = h2 && h2 = h3 then 1 + count_samepair t1 t2 t3
      else count_samepair t1 t2 t3

