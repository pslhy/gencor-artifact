let rec largest_prime_factor (n : int) : int = 
  let is_prime (x : int) : bool = 
    if x <= 1 then false 
    else 
      let rec check (divisor : int) : bool = 
        if divisor * divisor > x then true 
        else if x mod divisor = 0 then false 
        else check (divisor + 1) 
      in check 2 
  in
  let rec find_factor (factor : int) : int = 
    if n mod factor = 0 && is_prime factor then factor 
    else find_factor (factor + 1) 
  in find_factor 2

let () =
  assert (largest_prime_factor 13195 = 29);
  assert (largest_prime_factor 2048 = 2)


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
