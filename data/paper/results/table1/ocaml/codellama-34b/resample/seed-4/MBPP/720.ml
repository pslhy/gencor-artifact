(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to add an association list to the tuple. The output should be a tuple. *)
let rec add_dict_to_tuple (test_tup :  int * int * int) (test_dict : (string * int) list) :  int * int * int * (string * int) list = 
    let (x, y, z) = test_tup in
    let (k, v) = test_dict in
    if k = "a" && v = 1 then
       (x, y, z, test_dict)
    else if k = "b" && v = 2 then
       (x, y, z, test_dict)
    else if k = "c" && v = 3 then
       (x, y, z, test_dict)
    else
       (x, y, z, test_dict)

