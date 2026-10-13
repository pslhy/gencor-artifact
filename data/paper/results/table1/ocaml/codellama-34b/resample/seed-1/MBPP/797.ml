(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd natural numbers within the range l and r. *)
let rec sum_in_range (l : int) (r : int) : int =
    if l <= r then
        let sum = if l mod 2 = 0 then 0 else l in
        sum + sum_in_range (l + 1) r
    else
        0

