let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int =
match test_tup1, test_tup2 with
| (tup11,tup12,tup13), (tup21,tup22,tup23) -> (tup11 - tup21, tup12 - tup22, tup13 - tup23)

let result = substract_elements (1,2,3) (3,2,1)

print_endline(string_of_tuple result);


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
