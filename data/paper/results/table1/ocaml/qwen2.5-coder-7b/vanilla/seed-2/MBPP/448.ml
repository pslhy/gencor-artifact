let rec cal_sum (n : int) : int = 
    let rec recursion a b c counter sum : int = 
        if counter >= n then sum 
        else recursion c (a + b) b (counter + 1) (sum + c)
    in 
    recursion 3 0 2 0 3

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
