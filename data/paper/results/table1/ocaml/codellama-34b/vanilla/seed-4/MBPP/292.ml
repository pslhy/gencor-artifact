let rec find (n : int) (m : int) : int = 
    if (n < 0 && m > 0) || (n > 0 && m < 0) then -1
    else if n = 0 && m = 0 then 0
    else let half_n = n / 2 in
        let half_m = m / 2 in
            if half_n >= half_m then (find (half_n - half_m) half_m) + 1
            else (find half_n (half_m - half_n)) - 1



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find quotient of two numbers (rounded down to the nearest integer). *)
