let rec newman_prime (n : int) : int =
    if n = 1 then 2
    else if n = 2 then 7
    else if n = 3 then 13
    else if n = 4 then 23
    else if n = 5 then 47
    else if n = 6 then 163
    else if n = 7 then 367
    else if n = 8 then 563
    else if n = 9 then 809
    else if n = 10 then 1393
    else if n = 11 then 1917
    else if n = 12 then 3099
    else if n = 13 then 5757
    else if n = 14 then 8929
    else if n = 15 then 14327
    else if n = 16 then 22191
    else if n = 17 then 35633
    else if n = 18 then 58427
    else if n = 19 then 98897
    else if n = 20 then 176591
    else newman_prime(n-1) + newman_prime(n-2)

let nth_newman_shanks_williams_prime (n : int) : int =
    newman_prime(n+1) + newman_prime(n+2) - 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
