
let rec factorize (n : int) : int list =
  match n with
  | 1 -> []
  | _ ->
    let prime_factors =
      let rec find_prime_factors (n : int) (acc : int list) =
        match n with
        | 1 -> acc
        | _ ->
          let next_prime = find_prime_factors n [] in
          match next_prime with
          | [] -> acc
          | (p :: ps) ->
            let rec factorize_with_prime (n : int) (p : int) (acc : int list) =
              match n with
              | _ when n mod p = 0 -> factorize_with_prime (n / p) p (p :: acc)
              | _ -> acc
            in
            factorize_with_prime n p (p :: acc)
      in
      find_prime_factors n []
    in
    match prime_factors with
    | [] -> assert false
    | (p :: ps) -> factorize p ps

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
