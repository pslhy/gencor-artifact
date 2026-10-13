(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
let rec checks (n : int) : bool =
    if n < 1 then false
    else if n = (n / 10) then true
    else if (n mod 2) = 1 then check (n / 10)
    else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Unbound value "check" *)
(*     Hint: Did you mean "checks"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec checks (n : int) : bool =
    if n < 1 then false
    else if n = int_of_string (string_of_int n) + 1 then true
    else checks (n / 10)

