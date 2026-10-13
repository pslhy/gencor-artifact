let rec largest_prime_factor (n : int) : int =
  match n with
  | 2 | 3 -> n
  | _ ->
      let rec find_divisor (d : int) : int =
        if n mod d = 0 then d
        else find_divisor (d + 1)
      in
      let divisor = find_divisor 2 in
      if divisor <> n then divisor
      else largest_prime_factor (n / divisor)


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
