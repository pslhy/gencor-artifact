let rec power (a : int) (b : int) : int =
  if b = 0 then
    1
  else if b mod 2 = 0 then
    let c = power a (b / 2) in
    c * c
  else
    a * (power a (b - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the value of 'a' to the power 'b'. *)
