(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
    let tuple = String.split('\n') in
    let (a,b,c) = (List.nth(tuple,0), List.nth(tuple,1), List.nth(tuple,2)) in
    (Int.of_string(a), Int.of_string(b), Int.of_string(c))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
    let (a,b,c) = String.split('\n') in
    (Int.of_string(a), Int.of_string(b), Int.of_string(c))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:19: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
    let (a,b,c) = String.blit('\n') in
    (Int.of_string(a), Int.of_string(b), Int.of_string(c))

