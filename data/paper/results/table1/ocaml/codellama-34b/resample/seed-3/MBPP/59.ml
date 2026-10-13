(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
let rec is_octagonal (n : int) : int =
  if n = 1 then n else
  let (m, r) = n / 3 in
  if r = 0 then is_octagonal (m - 1) else m + 1

