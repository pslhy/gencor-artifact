let rec newman_prime (n : int) : int = 
    let rec aux (i : int) (a : int) (b : int) : int * int * int = 
        if i = 0 then (a, b, 1) else 
        let c = a + b in 
        if c mod 2 == 0 then aux (i - 1) (c + 1) b c else aux (i - 1) a b c in 
    let a = n / 3 in 
    let b = n mod 3 in 
    let c = aux b a a in 
    match (c |> snd3) with 
    | 1 -> a
    | _ -> c |> thrd3

and snd3 = function
| c, _, _ -> c
and thrd3 = function
| _, _, c -> c

in 
newman_prime n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
