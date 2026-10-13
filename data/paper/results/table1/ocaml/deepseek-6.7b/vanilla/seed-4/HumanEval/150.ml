let rec x_or_y (n : int) (x : int) (y : int) : int =
  let rec is_prime n acc =
    if n = acc then true
    else if n mod acc = 0 then false
    else is_prime n (acc + 1)
  in
  if is_prime n 2 then x else y


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
