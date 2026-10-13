(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
let rec closest_num (n : int) : int =
  if n = 1 then n else
  let (m, r) = n / 10, n mod 10 in
  let c = closest_num (m) in
  if r = 0 then (c * 10) + 9
  else if c < m then (c * 10) + (r - 1)
  else c

