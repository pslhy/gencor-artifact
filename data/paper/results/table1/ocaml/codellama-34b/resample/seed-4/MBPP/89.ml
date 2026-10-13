(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
let rec closest_num (n : int) : int = 
    let ( << ) a b = a * 2 in
    (n >> 1) * 2 + n - 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound value "(>>)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec closest_num (n : int) : int =
    let (<<) a b = a * 2 in
    let half = n << 1 in
    half - 1

