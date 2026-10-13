let rec count_Primes_nums (n : int) : int = 
  let is_prime num =
    let rec test div =
      if div * div > num then true
      else if num mod div = 0 then false
      else test (div + 1)
    in
    if num <= 1 then false else test 2
  in
  let rec count acc num =
    if num >= n then acc
    else if is_prime num then count (acc + 1) (num + 1)
    else count acc (num + 1)
  in
  count 0 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
