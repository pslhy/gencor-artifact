let rec count_up_to (n : int) : int list =
match n with
| 0 -> []
| _ ->
    let rec aux (i : int) (primes : int list) =
    match i with
    | n -> primes
    | _ ->
        if i mod n = 0 then aux (i + 1) primes else aux (i + 1) (i :: primes) in
    aux 2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
