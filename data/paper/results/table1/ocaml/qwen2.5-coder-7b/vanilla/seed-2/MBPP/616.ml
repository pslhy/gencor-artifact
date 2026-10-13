let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let modulo_helper a b = a mod b in 
    let first = modulo_helper (fst test_tup1) (fst test_tup2) in
    let second = modulo_helper (snd test_tup1) (snd test_tup2) in
    let third = modulo_helper (fst (Tree.SortedList.nth 2 test_tup1)) (fst (Tree.SortedList.nth 2 test_tup2)) in
    let fourth = modulo_helper (fst (Tree.SortedList.nth 3 test_tup1)) (fst (Tree.SortedList.nth 3 test_tup2)) in
    (first, second, third, fourth)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
