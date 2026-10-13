let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
    let (a, b, c) = test_tup1 in
    let (x, y, z) = test_tup2 in
    a <= x && b <= y && c <= z

let check_smaller test_tup1 test_tup2 =
    match test_tup1, test_tup2 with
    | (a, b, c), (x, y, z) -> a <= x && b <= y && c <= z


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
