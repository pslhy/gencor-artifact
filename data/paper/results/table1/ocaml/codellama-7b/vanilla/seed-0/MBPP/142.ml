let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  match (list1, list2, list3) with
  | (a :: b, c :: d, e :: f) ->
    if a = c && b = e then 1 + count_samepair b d f
    else count_samepair b d f
  | ([], [], []) -> 0
  | _ -> raise (Invalid_argument "count_samepair: lists must be of equal length")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
