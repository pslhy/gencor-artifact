let rec are_equivalent (num1 : int) (num2 : int) : bool =
    let divisors1 = get_divisors num1 in
    let divisors2 = get_divisors num2 in
    if List.length divisors1 = List.length divisors2 then
        let sum_divisors1 = List.fold_left (+) 0 divisors1 in
        let sum_divisors2 = List.fold_left (+) 0 divisors2 in
        sum_divisors1 = sum_divisors2
    else
        false

and get_divisors (num : int) : int list =
    let rec get_divisors' (num : int) (divisors : int list) : int list =
        if num = 1 then
            divisors
        else if num mod 2 = 0 then
            get_divisors' (num / 2) (2 :: divisors)
        else
            get_divisors' (num / 2) (1 :: divisors)
    in
    get_divisors' num []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
