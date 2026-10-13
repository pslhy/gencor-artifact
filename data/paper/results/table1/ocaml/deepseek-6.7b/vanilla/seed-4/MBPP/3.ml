let rec is_not_prime (n : int) : bool =
  if n <= 1 then
    false
  else if n <= 3 then
    true
  else if n mod 2 = 0 || n mod 3 = 0 then
    true
  else
    let rec loop (i: int) : bool =
      if i * i > n then
        false
      else if n mod i = 0 || n mod (i + 2) = 0 then
        true
      else
        loop (i + 6)
    in loop 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
