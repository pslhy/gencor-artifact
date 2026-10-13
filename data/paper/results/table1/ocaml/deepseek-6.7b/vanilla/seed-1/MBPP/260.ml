let rec newman_prime (n : int) : int =
  let rec is_prime n =
    if n < 2 then false
    else if n = 2 then true
    else if n mod 2 = 0 then false
    else
      let rec check_divisor d =
        if d * d > n then true
        else if n mod d = 0 then false
        else check_divisor (d + 2)
      in check_divisor 3
  in
  let rec find_prime_after n =
    if is_prime n then n
    else find_prime_after (n + 1)
  in
  if n <= 0 then 0
  else find_prime_after (newman_prime (n - 1) + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
