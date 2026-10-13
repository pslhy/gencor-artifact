let rec is_nonagonal (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 2
  else if n = 3 then 3
  else
    let n_prev = is_nonagonal (n - 1) in
    let n_next = is_nonagonal (n - 2) in
    if n_prev = 1 then n_next + 1 else n_prev + n_next

let nth_nonagonal (n : int) : int =
  if n = 1 then 1
  else is_nonagonal (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
