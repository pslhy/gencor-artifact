let rec are_equivalent (num1 : int) (num2 : int) : bool =
    if num1 <= 1 || num2 <= 1 then
        false
    else if num1 = num2 then
        true
    else if num1 < num2 then
        are_equivalent num2 num1
    else
        let sum_divisors num =
            let rec sum_divisors_aux acc = function
                | 1 -> acc
                | n when n mod 2 = 0 -> sum_divisors_aux (acc + n / 2) (n / 2)
                | n -> sum_divisors_aux (acc + n) (n - 1)
            in
            sum_divisors_aux 0 num
        in
        sum_divisors num1 = sum_divisors num2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
