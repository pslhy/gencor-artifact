(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether the parity of a given number is odd. *)
let rec find_Parity (x : int) : bool =
    if x = 0 then
        false
    else
        find_Parity (x >> 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Parity (x : int) : bool =
    if x = 0 then
        false
    else
        (x mod 2) <> 0

