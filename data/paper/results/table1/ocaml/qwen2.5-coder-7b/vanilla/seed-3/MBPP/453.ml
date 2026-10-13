let rec sumofFactors (n : int) : int = 
    let rec sum factor acc = 
        if factor * factor > n then acc 
        else if n mod factor = 0 then 
            let new_acc = acc + factor + (if factor * factor <> n then n / factor else 0) in
            sum (factor + 2) new_acc 
        else sum (factor + 2) acc 
    in 
    if n mod 2 <> 0 then 0 else sum 2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
