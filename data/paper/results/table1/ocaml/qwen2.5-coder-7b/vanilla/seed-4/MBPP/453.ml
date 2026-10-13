let rec sumofFactors (n : int) : int = 
  let rec helper (i : int) (sum : int) : int = 
    if i * i > n then sum
    else 
      if n mod i = 0 then 
        if i mod 2 = 0 then helper (i + 1) (sum + i)
        else helper (i + 1) sum
      else helper (i + 1) sum
  in helper 1 0

let sumEvenFactors (n : int) : int = 
  sumofFactors n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
