(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
let rec mul_even_odd (list1 : int list) : int = 
    match list1 with 
      head :: tail -> 
      (match tail with 
          first :: _ -> 
            if head mod 2 = 0 && first mod 2 <> 0 then head*first 
            else mul_even_odd tail)
| [] -> 1

