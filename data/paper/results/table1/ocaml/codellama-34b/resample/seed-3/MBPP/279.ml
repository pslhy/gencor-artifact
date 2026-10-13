(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)
let rec is_num_decagonal (n : int) : int =
  if n = 1 then n else
  let (m, r) = n / 10 in
  if r = 0 then is_num_decagonal(m) else
  if r mod 10 = 0 then 0 else
  let d = r (-) (10 v m) mod 10 in
  if d = 0 then 0 else
  is_num_decagonal (m, r - 10)

