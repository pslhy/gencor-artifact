let rec count_Primes_nums (n : int) : int =
  let rec is_prime n =
    if n < 2 then false
    else if n = 2 then true
    else if n mod 2 = 0 then false
    else
      let rec loop i =
        if i * i > n then true
        else if n mod i = 0 then false
        else loop (i + 1)
      in loop 3 in
  if n < 2 then 0
  else 1 + count_Primes_nums (n - 1) 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
