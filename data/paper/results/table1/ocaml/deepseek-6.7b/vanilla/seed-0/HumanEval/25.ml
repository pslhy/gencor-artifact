let rec factorize (n : int) : int list =
    let rec find_next_prime (n : int) (p : int) : int =
        if n mod p = 0 then p
        else find_next_prime n (p+1)
    in
    if n < 2 then []
    else
        let p = find_next_prime n 2 in
        p :: factorize (n / p)


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
