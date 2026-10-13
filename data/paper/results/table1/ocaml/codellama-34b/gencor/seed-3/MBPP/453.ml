
let rec sumofFactors (n : int) : int =
    if n = 1 then n else
    let (hd, tl) = (n mod 2 = 0, true :: false :: []) in
    if hd then sumofFactors n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
