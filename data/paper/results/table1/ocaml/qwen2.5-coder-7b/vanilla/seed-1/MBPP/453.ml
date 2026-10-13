let rec sumofFactors (n : int) : int = 
  let rec factors (i: int) (acc: int) : int = 
    if i > n then acc 
    else if n mod i = 0 then factors (i + 1) (acc + i) 
    else factors (i + 1) acc 
  in 
  factors 1 0

let rec isEven (n : int) : bool = 
  n mod 2 = 0

let sumOfEvenFactors (n : int) : int = 
  sumofFactors n |> (fun x -> if isEven x then x else 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even factors of a number. *)
