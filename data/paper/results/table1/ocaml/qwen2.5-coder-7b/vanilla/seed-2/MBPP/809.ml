let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool = 
    match test_tup1, test_tup2 with
    | (a1, a2, a3), (b1, b2, b3) -> 
        a1 > b1 && a2 > b2 && a3 > b3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
