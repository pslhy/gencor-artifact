let rec sum_div (number : int) : int =
    let rec check_divisor (iterator : int) : int =
        if iterator = 0 then 0
        else if number mod iterator = 0 then iterator + check_divisor (iterator - 1)
        else check_divisor (iterator - 1)
    in
    check_divisor (number / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
