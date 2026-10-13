let rec count_up_to (n : int) : int list = 
  let rec is_prime (num : int) : bool = 
    let rec check_divisors (i : int) : bool = 
      if i * i > num then true
      else if num mod i = 0 then false
      else check_divisors (i + 1)
    in check_divisors 2
  in
  let rec collect_primes (count : int) (current : int) (acc : int list) : int list =
    if count = 0 then acc
    else if is_prime current then collect_primes (count - 1) (current + 1) (current :: acc)
    else collect_primes count (current + 1) acc
  in
  collect_primes n 2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
