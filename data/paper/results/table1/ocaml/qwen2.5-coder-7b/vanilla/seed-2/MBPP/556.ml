let rec find_Odd_Pair (a : int list) (n : int) : int = 
    let rec find [x|y::ys] z count = 
        if (n=z) then count
        else if (z mod 2 = 1 && (x lxor y) mod 2 = 1) then find y::ys (z+1) (count+1)
        else find (y::ys) (z+1) count
    and find [] z count = count
    in find a 0 0 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
