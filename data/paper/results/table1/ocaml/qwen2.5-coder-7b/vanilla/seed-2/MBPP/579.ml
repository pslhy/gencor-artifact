let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let rec find_dissimilar' (tup1 :  int * int * int * int) (tup2 :  int * int * int * int) (acc :  int * int * int * int) :  int * int * int * int =
        match tup1 with
        | (a, b, c, d) -> 
            match tup2 with
            | (a', b', c', d') -> 
                (if a <> a' then (a, -1, -1, -1) else acc,
                 if b <> b' then (-1, b, -1, -1) else acc,
                 if c <> c' then (-1, -1, c, -1) else acc,
                 if d <> d' then (-1, -1, -1, d) else acc)
    in
    find_dissimilar' test_tup1 test_tup2 (0, 0, 0, 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
