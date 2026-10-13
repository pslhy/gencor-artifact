let rec count_up_to (n : int) : int list = 
  let is_prime x =
    if x <= 1 then false
    else
      let rec check_divisors i =
        if i * i > x then true
        else if x mod i = 0 then false
        else check_divisors (i + 1)
      in check_divisors 2
  in
  let rec collect_primes acc count current =
    if count = 0 then acc
    else if is_prime current then collect_primes (current :: acc) (count - 1) (current + 1)
    else collect_primes acc count (current + 1)
  in
  collect_primes [] n 2


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
