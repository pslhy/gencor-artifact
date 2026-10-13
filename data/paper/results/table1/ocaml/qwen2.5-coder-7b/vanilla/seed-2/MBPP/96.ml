let rec divisor (n : int) : int = 
    let rec count_divisors x counter = 
        if x > n then
            counter
        else if n mod x = 0 then
            count_divisors (x + 1) (counter + 1)
        else
            count_divisors (x + 1) counter
    in
    if n <= 0 then
        0
    else
        count_divisors 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
