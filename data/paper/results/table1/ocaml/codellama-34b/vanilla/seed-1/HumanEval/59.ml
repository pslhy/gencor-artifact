let rec largest_prime_factor (n : int) : int =
    let rec aux (i : int) : int =
        if i < 2 then i
        else
            let x = aux (i - 1) in
            if x = 1 then i
            else if n mod x = 0 then x
            else aux (i - 1)
    in aux n


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
