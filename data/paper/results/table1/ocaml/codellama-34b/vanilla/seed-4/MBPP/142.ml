let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int = 
    (* base case: lists are empty *)
    match (list1, list2, list3) with
    | ([], [], []) -> 
        0
    (* base case: one or more lists are not empty *)
    | ([], _, _) | (_, [], _) | (_, _, []) -> 
        0
    (* base case: elements are identical *)
    | (h1::tail1, h2::tail2, h3::tail3) when h1 = h2 && h2 = h3 -> 
        1 + count_samepair tail1 tail2 tail3
    (* base case: elements are different *)
    | (h1::tail1, h2::tail2, h3::tail3) ->
        count_samepair tail1 tail2 tail3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
