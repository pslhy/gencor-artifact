let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
    let (t1, t2, t3, t4) = test_tup in 
    let delim = "," in 
    t1 ^ delim ^ t2 ^ delim ^ string_of_int(t3) ^ delim ^ t4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
