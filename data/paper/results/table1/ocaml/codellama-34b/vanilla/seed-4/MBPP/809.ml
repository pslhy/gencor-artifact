let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool = 
    let (x1, x2, x3) = test_tup1 
    let (y1, y2, y3) = test_tup2 
    if x1 < y1 then true 
    else if x2 < y2 then true 
    else if x3 < y3 then true 
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
