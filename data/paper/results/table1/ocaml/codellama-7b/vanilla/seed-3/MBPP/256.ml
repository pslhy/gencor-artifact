let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    1
  else
    let prime = ref 0 in
    for i = 2 to n - 1 do
      if is_prime i then
        prime := !prime + 1;
    done;
    !prime

and is_prime (n : int) : bool =
  if n < 2 then
    false
  else
    let sqrt_n = int_of_float (sqrt (float n)) in
    for i = 2 to sqrt_n do
      if n mod i = 0 then
        false
    done
in
count_Primes_nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
