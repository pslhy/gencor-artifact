(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
let rec amicable_numbers_sum (limit : int) : int =
    let rec sum_of_factors (n : int) : int =
        match n with
        | 1 -> 1
        | n ->
            let rec factors_of (n : int) : int list =
                match n with
                | 1 -> [1]
                | n -> if n mod 2 = 0 then n :: factors_of(n/2) else n :: factors_of(n-1)
            in
            List.fold_left (fun acc x -> acc + x) 0 (factors_of(n) @ factors_of(n))
    in
    let rec amicable_numbers (limit : int) : int list =
        match limit with
        | 1 -> []
        | limit ->
            let rec amicable_pairs (n : int) : int list =
                if sum_of_factors(n) = n && sum_of_factors(sum_of_factors(n)) = n then [n] else []
            in
            amicable_pairs(limit) @ amicable_numbers(limit-1)
    in
    List.fold_left (fun acc x -> acc + x) 0 (amicable_numbers(limit))

