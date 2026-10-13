let rec is_nonagonal (n : int) : int =
  let rec helper (acc : int) (i : int) : int =
    if i * 7 + acc * 2 >= n then acc
    else helper (acc + i * 2) (i + 1)
  in
  if n = 0 then 0
  else 1 + helper 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
