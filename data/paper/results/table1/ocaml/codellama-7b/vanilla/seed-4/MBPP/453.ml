let rec sumofFactors (n : int) : int = 
    let rec facHelper (n : int) (acc : int) (i : int) : int =
        if i * i > n then acc
        else if n mod i = 0 then facHelper (n / i) (acc + i) (i + 1) 
        else facHelper (n / i) (acc) (i + 1)
    in
    facHelper n 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
