let rec square_Sum (n : int) : int = 
    let rec sum_odds n acc = 
        if n = 0 then acc
        else sum_odds (n - 1) ((2 * n - 1) * (2 * n - 1) + acc)
    in
    sum_odds n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
