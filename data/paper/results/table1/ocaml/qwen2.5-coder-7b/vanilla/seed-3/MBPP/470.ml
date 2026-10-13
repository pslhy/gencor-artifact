let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int = 
    let tup1 = fst test_tup in 
    let tup2 = snd test_tup in 
    let tup3 = fst (snd (snd test_tup)) in 
    let tup4 = snd (snd (snd test_tup)) in 
    let tup5 = snd (snd (snd (snd test_tup))) in 
    (tup1 + tup2, tup2 + tup3, tup3 + tup4, tup4 + tup5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
