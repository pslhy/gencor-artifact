let rec are_equivalent (num1 : int) (num2 : int) : bool =
    let rec sum_divisors num acc =
        if num = 1 then acc
        else
            if num mod 2 = 0 then sum_divisors (num / 2) (acc + 1)
            else sum_divisors (num / 3) (acc + num / 2)
    in
    let divisor_sum num = sum_divisors num 1 in
    divisor_sum num1 = divisor_sum num2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
