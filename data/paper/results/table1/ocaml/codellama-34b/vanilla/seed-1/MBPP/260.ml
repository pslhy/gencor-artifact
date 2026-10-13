let rec newman_prime (n : int) : int =
    let is_prime (p : int) : bool =
        let rec is_prime_helper (p : int) (i : int) : bool =
            if i <= 1 then true
            else if p mod i = 0 then false
            else is_prime_helper p (i-1)
        in
        is_prime_helper p (p-1)
    in
    let rec newman_prime_helper (p : int) (n : int) : int =
        if n = 1 then 2
        else if n = 2 then 3
        else if n = 3 then 7
        else if n = 4 then 17
        else if n = 5 then 43
        else if n = 6 then 59
        else if n = 7 then 109
        else if n = 8 then 257
        else if n <= 10 then newman_prime_helper (p*p-1) (n-1)
        else newman_prime_helper (p*p+p+1) (n-1)
    in
    newman_prime_helper 7 (n+1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
