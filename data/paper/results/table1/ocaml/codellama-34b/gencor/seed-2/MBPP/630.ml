
let rec get_coordinates (test_tup :  int * int) : int list list =
    let (a, b) = test_tup in
    let coords = [(a-1, b) ::(a, b+1) ::(a+1, b) ::(a, b-1) ::(a, b)] in
    if a = 0 || a = 9 || b = 0 || b = 9 then coords
    else coords @ get_coordinates (a, b)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
