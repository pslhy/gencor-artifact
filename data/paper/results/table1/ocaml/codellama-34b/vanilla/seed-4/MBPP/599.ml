let rec sum_average (number : int) :  int * float = 
    let (sum, average) = (0, 0.0) in
    let (current, avg) : int * float = (1, 0.0) in 
    for i = 1 to number do
        sum := sum + i;
        avg := avg + current;
        current := current + 1;
    done;
    (sum, avg)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
