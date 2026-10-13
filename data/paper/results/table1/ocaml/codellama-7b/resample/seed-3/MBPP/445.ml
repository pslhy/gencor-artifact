(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  match test_tup1 with
  | [] -> []
  | x::xs ->
    List.map2 (fun e1 e2 -> e1 * e2) x e2) xs

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:42: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
   List.map2 (fun e1 e2 -> e1 * e2) test_tup1 test_tup2;;

let test_list1 = [
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 1; 1; 2; 2; 2; 3; 3; 3; 4; 4];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 1; 1; 2; 2; 2; 3; 3; 3; 4; 4];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1]
];;

let test_list2 = [
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [2; 3; 4; 5; 6; 7; 8; 9; 10; 11];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 1; 1; 2; 2; 2; 3; 3; 3; 4; 4];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 1; 1; 2; 2; 2; 3; 3; 3; 4; 4];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1];
  [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
  [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 1]
];;

let result = index_multiplication test_list1 test_list2;;

result;;

