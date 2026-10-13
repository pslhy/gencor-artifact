(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
    let (a, b, c, d) = test_tup in 
    a ^ b ^ string_of_int c ^ d

