let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int = 
    let a = (fst test_tup) + (snd test_tup) in 
    let b = (snd test_tup) + (nth test_tup 3) in 
    let c = (fst test_tup) + (nth test_tup 3) in 
    let d = (nth test_tup 2) + (nth test_tup 4) in 
    let e = (d + c + b + a) / 4 in
    (a, b, c, d, e)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
