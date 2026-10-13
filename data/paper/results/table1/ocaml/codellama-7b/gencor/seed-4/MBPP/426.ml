
let rec filter_oddnumbers (nums : int list) : int list = 
    match nums with 
      head :: tail -> 
          (match head with 
               x -> if x mod 2 = 0
              then head :: filter_oddnumbers (tail)
              else filter_oddnumbers (tail))
          | _ -> []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
