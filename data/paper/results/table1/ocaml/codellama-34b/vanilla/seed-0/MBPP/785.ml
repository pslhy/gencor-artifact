let rec tuple_str_int (test_str : string) :  int * int * int =
    let tuple = String.split('\n') in
    let (a,b,c) = (List.nth(tuple,0), List.nth(tuple,1), List.nth(tuple,2)) in
    (Int.of_string(a), Int.of_string(b), Int.of_string(c))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
