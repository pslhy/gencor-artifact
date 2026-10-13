(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int = 
    let (a,b,c,d,e) = test_tup 
    in let (a,b,v,w,x) = (a+b,c+d,e+a,b+d,c+a) 
    in (a,b,v,w,x) 

