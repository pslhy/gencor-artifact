let rec largest_prime_factor (n : int) : int = 
  let rec is_prime (x : int) : bool = 
    if x <= 1 then false
    else if x <= 3 then true
    else if x mod 2 = 0 || x mod 3 = 0 then false
    else
      let rec check i =
        if i * i > x then true
        else if x mod i = 0 || x mod (i + 2) = 0 then false
        else check (i + 6)
      in check 5
  in
  let rec find_factor (i : int) : int =
    if n mod i = 0 && is_prime i then i
    else find_factor (i + 1)
  in
  find_factor 2;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
