let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ ->
        let rec is_Prime (num : int) : bool =
            match num with
            | 0 | 1 -> false
            | _ ->
                match num with
                | _ when is_Prime(num / 2) -> false
                | _ when is_Prime(num / 3) -> false
                | _ when is_Prime(num / 5) -> false
                | _ when is_Prime(num / 7) -> false
                | _ -> true
        in
        count_Primes_nums (n - 1) + (if is_Prime n then 1 else 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
