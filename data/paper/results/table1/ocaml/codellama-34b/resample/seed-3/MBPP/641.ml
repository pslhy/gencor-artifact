(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
let rec is_nonagonal (n : int) : int =
  if n = 1 then n else is_nonagonal (n - 1) * 10 + n

let nth_nonagonal (n : int) : int =
  if n mod 9 = 0 then
    is_nonagonal (n / 9)
  else
    is_nonagonal (n / 9 + 1)

