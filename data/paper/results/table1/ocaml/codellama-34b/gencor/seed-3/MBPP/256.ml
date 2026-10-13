
let rec count_Primes_nums (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    0
  else if n = 2 then
    2
  else
    let prime = true in
    let flag = ref 2 in
    while !flag <= truncate(sqrt(float(n))) do
      if n mod !flag = 0 then
        prime <- false
      flag := !flag + 1
    done;
    if prime then
      1 + count_Primes_nums (n - 1)
    else
      count_Primes_nums (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
