let rec sum_div (number : int) : int =
    if number = 0 then 0
    else if number = 1 then 1
    else
        let rec loop (n : int) (sum : int) : int =
            if n = 1 then sum
            else
                let sum' = if n mod number = 0 then sum + n else sum
                loop (n+1) sum'
        loop 2 sum_div number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
