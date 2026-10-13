let rec count_Primes_nums (n : int) : int = 
    let rec is_prime (m : int) : bool = 
        match m with
        | 0 | 1 -> false
        | 2 -> true
        | _ -> 
            let rec check_div (i : int) : bool = 
                if i * i > m then true
                else if m mod i = 0 then false
                else check_div (i + 1)
            in check_div 2 in
    let rec count (i : int) (count : int) : int = 
        if i = n then count
        else if is_prime i then count (count + 1) (i + 1)
        else count count (i + 1)
    in count 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
