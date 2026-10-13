let rec divisor (n : int) : int =
  let rec helper (acc : int) (i : int) : int =
    if i > n / 2 then acc + if n mod i = 0 then 1 else 0
    else if n mod i = 0 then helper (acc + 1) (i + 1)
    else helper acc (i + 1) in
  helper 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
