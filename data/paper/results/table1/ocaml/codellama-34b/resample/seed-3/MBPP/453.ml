(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
let rec sumofFactors (n : int) : int =
    if n = 1 then n else
    let (hd, tl) = (n mod 2 = 0, tl) in
    if hd then hd + sumofFactors (tl) else 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:34: Unbound value "tl" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sumofFactors (n : int) : int =
    if n = 1 then n else
    let (hd, tl) = (n mod 2 = 0, []) in
    if hd then hd + sumofFactors (tl) else 0

