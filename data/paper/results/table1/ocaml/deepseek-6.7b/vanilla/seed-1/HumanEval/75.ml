let rec is_multiply_prime (a : int) : bool =
  match a with
  | 1 -> false
  | _ ->
      let rec find_prime ls n =
        match ls with
        | [] -> if n * n > a then n else -1
        | h::t -> if n * h > a then -1
                  else if a mod h = 0 then n
                  else find_prime t (n * h)
      in
      let rec next_primes ls n =
        if n * n > a then ls
        else next_primes (n::ls) (n + 1)
      in
      let rec is_prime n =
        if n = 2 then true
        else if a mod n = 0 then false
        else if n * n > a then true
        else is_prime (n + 1)
      in
      let rec valid_factors ls acc n =
        if n = 1 then acc
        else if a mod n = 0 then valid_factors ls (n::acc) (n / (find_prime ls n))
        else valid_factors ls acc (n - 1)
      in
      let factors = valid_factors [] [] a in
      let rec check_factor ls acc =
        match ls with
        | [] -> acc = 3
        | _ -> check_factor [] (acc + (if is_prime (List.hd ls) then 1 else 0))
      in
      check_factor factors 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
