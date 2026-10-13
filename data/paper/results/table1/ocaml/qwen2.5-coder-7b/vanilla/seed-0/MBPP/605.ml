let rec prime_num (num : int) : bool = 
  let is_divisible n i = n mod i = 0 in
  let rec check_divisors n i = 
    if i * i > n then true
    else if is_divisible n i then false
    else check_divisors n (i + 1)
  in
  if num <= 1 then false
  else check_divisors num 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
