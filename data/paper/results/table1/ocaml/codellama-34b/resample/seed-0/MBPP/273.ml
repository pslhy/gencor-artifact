(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int =
    if (test_tup1 = (0, 0, 0)) || (test_tup2 = (0, 0, 0)){
         (0, 0, 0)
    }
    else {
        let (a, b, c) = test_tup1 in
        let (d, e, f) = test_tup2 in
        (a-d, b-e, c-f)
    }

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int =
    if (test_tup1 = (0, 0, 0)) || (test_tup2 = (0, 0, 0)) then
        (0, 0, 0)
    else
        let (a, b, c) = test_tup1 in
        let (d, e, f) = test_tup2 in
        (a-d, b-e, c-f)

