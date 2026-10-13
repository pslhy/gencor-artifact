(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
    let delimiter = "-" in
    let rec helper (tup : string * string * int * string) (acc : string) : string =
        match tup with
        | (a, b, c, d) -> acc ^ a ^ delimiter ^ b ^ delimiter ^ (string_of_int c) ^ delimiter ^ d
    in
    helper test_tup ""

(* Example usage:
let result = concatenate_tuple ("apple", "banana", 42, "cherry") in
print_endline result; (* Output: apple-banana-42-cherry *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Comment not terminated *)
(*     Please regenerate the code, taking these errors into account. *)
let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
    let delimiter = "-" in
    let rec helper (tup : string * string * int * string) (acc : string) : string =
        match tup with
        | (a, b, c, d) -> acc ^ a ^ delimiter ^ b ^ delimiter ^ (string_of_int c) ^ delimiter ^ d
    in
    helper test_tup ""

