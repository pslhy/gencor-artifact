let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int =
  match test_tup with
    | (x, y, z, a, b) -> (x, y, z, a, b, List.hd test_list)

(* example test case *)
let test_list = [3; 4; 5; 6; 7]
let test_tup = (1, 2, 3, 4, 5)

let result = add_lists test_list test_tup (* example, (1, 2, 3, 4, 5, 3) *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
