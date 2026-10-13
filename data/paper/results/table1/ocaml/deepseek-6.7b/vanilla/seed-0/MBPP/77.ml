let rec is_Diff (n : int) : bool =
    if n < 0 then is_Diff (-n)
    else if n == 0 then false
    else if n == 11 then true
    else if n < 11 then false
    else is_Diff (n - 11)

(* Test Cases *)
let _ = assert(is_Diff 11 = true) (* 11 is divisible by 11 *)
let _ = assert(is_Diff 22 = true) (* 22 is divisible by 11 *)
let _ = assert(is_Diff 33 = true) (* 33 is divisible by 11 *)
let _ = assert(is_Diff 0 = false) (* 0 is not divisible by 11 *)
let _ = assert(is_Diff 10 = false) (* 10 is not divisible by 11 *)
let _ = assert(is_Diff 12 = false) (* 12 is not divisible by 11 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
