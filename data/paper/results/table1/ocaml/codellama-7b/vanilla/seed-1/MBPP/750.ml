let rec add_tuple (test_list : int list) (test_tup :  int * int) : int list =
match test_list with
| h :: tl -> h :: (add_tuple tl test_tup)
| [] -> []

(* example usage *)
let tup0 = (1, 2);;
let tup1 = (3, 4);;
let tup2 = (5, 6);;
let tup3 = (7, 8);;
let test_list = [];;
test_list <- add_tuple test_list tup0;;
test_list <- add_tuple test_list tup1;;
test_list <- add_tuple test_list tup2;;
test_list <- add_tuple test_list tup3;;
test_list;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add the given tuple to the given list. *)
