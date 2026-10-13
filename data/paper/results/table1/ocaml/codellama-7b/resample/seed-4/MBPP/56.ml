(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
let rec checks (n : int) : bool = 
    let rev = n |> string_of_int |> String.rev |> int_of_string in
    let check = n + 1 = rev * 2 in 
    check

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:37: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool = 
    let rev = int_of_string (String.rev (string_of_int n)) in
    let check = n + 1 = rev * 2 in 
    check

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:30: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool = 
    let rev = String.reverse (string_of_int n) in
    let check = n + 1 = rev * 2 in 
    check

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound value "String.reverse" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool = 
    let rev = String.reverse (string_of_int n) in
    let check = n + 1 = rev * 2 in 
    check

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Unbound value "String.reverse" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool = 
    let rev = Int.to_string n in
    let check = n + 1 = Int.of_string rev * 2 in 
    check

