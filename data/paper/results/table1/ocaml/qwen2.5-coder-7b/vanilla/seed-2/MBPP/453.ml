let rec sumofFactors (n : int) : int = 
    let rec sumEvenFactors n i sum = 
        if i <= n then 
            if n mod i = 0 && i mod 2 = 0 
            then sumEvenFactors n (i + 1) (sum + i)
            else sumEvenFactors n (i + 1) sum
        else sum 
    in sumEvenFactors n 1 0

let () = print_int (sumofFactors 18)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
