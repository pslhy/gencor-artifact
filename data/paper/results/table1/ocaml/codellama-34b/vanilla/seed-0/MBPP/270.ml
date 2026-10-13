let rec sum_even_and_even_index (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        if (x mod 2 == 0) then 
            if (xs = []) then 
                x
            else 
                x + sum_even_and_even_index xs
        else 
            if (xs = []) then 
                0
            else 
                sum_even_and_even_index xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
