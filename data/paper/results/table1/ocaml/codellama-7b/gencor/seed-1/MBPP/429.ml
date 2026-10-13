
let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| test_tup1t1 :: test_tup1t2 :: test_tup1t3 :: test_tup1t4 :: test_tup1t5 :: test_tup1t6 :: test_tup1t7 :: [],
test_tup2t1 :: test_tup2t2 :: test_tup2t3 :: test_tup2t4 :: test_tup2t5 :: test_tup2t6 :: test_tup2t7 :: [],
[] ->
    (test_tup1,test_tup2)
| _ ->
    []
in

let sampleTestTuple1 = (1,2,3,4,5,6,7);
let sampleTestTuple2 = (1,2,3,4,5,6,7);
and_tuples (2,3,4,5) (2,3,4,5);
let sampleTestTuple3 = (1,2,3,4,5,6,7,8,9,10);
and_tuples (2,3,4,5) (2,3,4,5,6);
let sampleTestTuple4 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7);
let sampleTestTuple5 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8);
let sampleTestTuple6 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9);
let sampleTestTuple7 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10);
let sampleTestTuple8 = (1,2,3,4,5,6,7,8,9,10,11,12);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11);
let sampleTestTuple9 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12);
let sampleTestTuple10 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12);
let sampleTestTuple11 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple12 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14);
let sampleTestTuple13 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple14 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple15 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple16 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple17 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple18 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple19 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple20 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple21 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple22 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple23 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple24 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple25 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple26 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple27 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple28 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple29 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple30 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple31 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple32 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple33 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let sampleTestTuple34 = (1,2,3,4,5,6,7,8,9,10,11,12,13);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13,14,15);
let sampleTestTuple35 = (1,2,3,4,5,6,7,8,9,10,11);
and_tuples (2,3,4,5) (2,3,4,5,6,7,8,9,10,11,12,13);
let

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
