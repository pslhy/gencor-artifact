(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
let rec amicable_numbers_sum (limit : int) : int =
    let rec is_amicable (n : int) : bool =
        let sum_of_factors =
            let rec sum_of_factors_from (divisor : int) : int =
                if divisor <= 1 then 1
                else if n mod divisor = 0 then divisor + sum_of_factors_from (divisor - 1)
                else sum_of_factors_from (divisor - 1)
            in
            sum_of_factors_from (n / 2)
        in
        let sum_of_factors_of_sum =
            let rec sum_of_factors_from (divisor : int) : int =
                if divisor <= 1 then 1
                else if sum_of_factors mod divisor = 0 then divisor + sum_of_factors_from (divisor - 1)
                else sum_of_factors_from (divisor - 1)
            in
            sum_of_factors_from (sum_of_factors / 2)
        in
        sum_of_factors_of_sum = n && sum_of_factors > n
    in
    let rec amicable_numbers (limit : int) : int list =
        let rec loop (n : int) (acc : int list) : int list =
            if n >= limit then acc
            else if is_amicable n then loop (n + 1) (n :: acc)
            else loop (n + 1) acc
        in
        loop 1 []
    in
    List.fold_left (+) 0 (amicable_numbers limit)

