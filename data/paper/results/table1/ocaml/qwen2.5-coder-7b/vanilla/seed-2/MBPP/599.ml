let rec sum_average (number : int) :  int * float = 
    let rec sum n acc = 
        if n <= 0 then acc
        else sum (n-1) (acc + n) 
    in
    let the_sum = sum number 0 in 
    (the_sum, (float the_sum /. float number))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
