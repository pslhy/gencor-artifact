let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
match test_tup1, test_tup2 with
| (tup10,tup11,tup12), (tup20,tup21,tup22) ->
    if tup20 < tup10 then false
    else if tup21 < tup11 then false
    else if tup22 < tup12 then false
    else true
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
