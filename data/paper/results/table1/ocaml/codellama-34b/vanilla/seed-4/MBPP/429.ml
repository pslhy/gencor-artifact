let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (x1, x2, x3, x4) = test_tup1 in
    let (y1, y2, y3, y4) = test_tup2 in
    let z1 = x1 && y1 in
    let z2 = x2 && y2 in
    let z3 = x3 && y3 in
    let z4 = x4 && y4 in
    (z1, z2, z3, z4)

let extract_and_tuples (tups :  (int * int * int * int) list) :  int * int * int * int = 
    List.fold_left (and_tuples) (~~None, ~~None, ~~None, ~~None) tups 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
