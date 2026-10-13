let rec is_not_prime (n : int) : bool =
  if n <= 1 then
    true
  else if n < 4 then
    false
  else if n mod 2 = 0 || n mod 3 = 0 then
    true
  else
    let max_divisor = int_of_float (sqrt (float_of_int n)) in
    let rec check_divisor (i : int) : bool =
      if i > max_divisor then
        false
      else if n mod i = 0 || n mod (i + 2) = 0 then
        true
      else
        check_divisor (i + 6)
    in
    check_divisor 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
