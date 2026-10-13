(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
let rec are_equivalent (num1 : int) (num2 : int) : bool =
    let rec sum_of_divisors (n : int) : int * int =
        let sqrt_n = int_of_float (sqrt (float_of_int n)) in
        let rec loop (i : int) (acc : int) : int * int =
            if i > sqrt_n then (n, acc)
            else if n mod i = 0 then loop (i + 1) (acc + i + n / i)
            else loop (i + 1) acc
        in
        loop 1 0
    in
    let (sum1, sum2) = sum_of_divisors num1, sum_of_divisors num2 in
    sum1 = sum2

