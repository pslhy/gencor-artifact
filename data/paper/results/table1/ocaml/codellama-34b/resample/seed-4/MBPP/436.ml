(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
let rec neg_nos (list1 : int list) : int list = 
    match list1 with 
      head :: tail -> 
      (match head with 
          n when n < 0 -> head :: neg_nos tail
        | _ -> neg_nos tail)
    | [] -> []

