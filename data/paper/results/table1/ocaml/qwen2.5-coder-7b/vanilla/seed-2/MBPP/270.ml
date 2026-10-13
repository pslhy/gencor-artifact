let rec sum_even_and_even_index (arr : int list) : int = 
    let rec helper lst idx acc = 
        match lst with 
        | [] -> acc 
        | h::t -> if idx mod 2 = 0 && h mod 2 = 0 then helper t (idx + 1) (acc + h) else helper t (idx + 1) acc 
    in 
    helper arr 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
