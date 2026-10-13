(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
let rec extract_rear (test_tuple :  string * string * string) : string list = 
    let (left, middle, right) = test_tuple in 
    [right]

