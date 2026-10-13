let rec largest_prime_factor (n : int) : int = 
  let rec check_factor (factor : int) : bool = 
    if factor * factor > n then true
    else if n mod factor = 0 then false
    else check_factor (factor + 1)
  in
  let rec find_largest (current : int) : int = 
    if check_factor current then current
    else find_largest (current - 1)
  in
  find_largest (n / 2)

let () =
  print_int (largest_prime_factor 13195); print_newline ();
  print_int (largest_prime_factor 2048); print_newline ()


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
