let rec sumofFactors (n : int) : int =
  let rec loop i sum =
    if i > n / 2 then
      sum
    else if n mod i = 0 then
      loop (i + 2) (sum + i)
    else
      loop (i + 2) sum
  in
  if n < 1 then
    0
  else if n = 1 then
    1
  else
    loop 2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
