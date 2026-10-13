(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
    if n <= 1 then 0
    else if n = 2 then 1
    else if n = 3 then 2
    else
        let max = int_of_float (floor (sqrt (float_of_int n))) in
        let rec loop i count =
            if i > max then count
            else if n mod i = 0 then loop (i + 1) count
            else loop (i + 1) (count + 1) in
        loop 2 0

