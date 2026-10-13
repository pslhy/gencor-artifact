(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
let rec highest_Power_of_2 (n : int) : int = 
    if n <= 1 then
        0
    else
        1 << (highest_Power_of_2 (n - 1))

let n = 100
let result = highest_Power_of_2 n
print_int result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:11: Unbound value "(<<)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec highest_Power_of_2 (n : int) : int =
    if n <= 1 then
        0
    else
        (* 1 lsl (highest_Power_of_2 (n - 1)) *)
        n lsl (highest_Power_of_2 (n - 1))

let n = 100
let result = highest_Power_of_2 n
print_int result

