
let rec newman_prime (n : int) : int = 
  let rec is_prime num div = 
    if div * div > num then true
    else if num mod div = 0 then false
    else is_prime num (div + 1)
  in
  let rec newman_sequence k = 
    if k = 0 then 0
    else if k = 1 then 1
    else (newman_sequence (k - 1)) * (newman_sequence (k - 2)) + 2
  in
  let rec count = ref 0 
  and candidate = ref 1 
  in
  while !count < n do
    candidate := !candidate + 2;
    if is_prime !candidate (Int.pred !candidate) then 
      if is_prime (newman_sequence (!candidate - 1) + 1) (!candidate - 2) then
        incr count;
  done;
  !candidate

let nth_newman_prime n = 
  newman_prime (n - 1)

(* Example usage: to get the 5th Newman-Shanks-Williams prime *)
(* nth_newman_prime 5 *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
