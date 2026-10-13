let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int =
    (
    (fst test_tup1) - (fst test_tup2),
    (snd test_tup1) - (snd test_tup2),
    ((snd test_tup1, test_tup2) |> snd) - ((snd test_tup2, test_tup2) |> snd)
    )
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
