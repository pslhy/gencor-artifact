let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| (tup10,tup11,tup12,tup13), (tup20, tup21, tup22, tup23) ->
    if tup10 = tup20 && tup11 = tup21 && tup12 = tup22 && tup13 = tup23 then
        (0,0,0,0)
    else
        (tup20 - tup10, tup21 - tup11, tup22 - tup12, tup23 - tup13)
                    

let sample_tup1 = (1,2,3,4);;
let sample_tup2 = (4,5,6,7);;
find_dissimilar sample_tup1 sample_tup2;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
