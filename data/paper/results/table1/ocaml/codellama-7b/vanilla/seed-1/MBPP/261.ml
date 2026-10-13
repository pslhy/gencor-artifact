let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| (tup10,tup11,tup12,tup13), (tup20, tup21, tup22, tup23) ->
let result = (tup10/tup20,tup11/tup21,tup12/tup22,tup13/tup23)
in result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
