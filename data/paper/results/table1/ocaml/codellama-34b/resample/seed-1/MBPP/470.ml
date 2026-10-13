(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
    let acc = 0 in
    let rec loop(const_tup : int * int * int * int * int):  int * int * int * int =
        match const_tup with
        | (a, b, c, d, e) -> (a + e, b + a, c + b, d + c, e + d)
    in loop(test_tup)

