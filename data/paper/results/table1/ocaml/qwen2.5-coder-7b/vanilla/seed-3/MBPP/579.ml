let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let dissimilar1 = if fst test_tup1 = fst test_tup2 then 0 else fst test_tup1 in
    let dissimilar2 = if snd test_tup1 = snd test_tup2 then 0 else snd test_tup1 in
    let dissimilar3 = if thd test_tup1 = thd test_tup2 then 0 else thd test_tup1 in
    let dissimilar4 = if frth test_tup1 = frth test_tup2 then 0 else frth test_tup1 in
    (dissimilar1, dissimilar2, dissimilar3, dissimilar4)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
