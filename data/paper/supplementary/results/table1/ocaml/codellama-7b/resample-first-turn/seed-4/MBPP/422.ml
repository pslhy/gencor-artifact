let rec find_Average_Of_Cube (n : int) : float = 
    let rec cubic (x : int) = x * x * x in
    let rec sum (n : int, curr_sum: float) : float = 
        if n = 0 then curr_sum else sum (n-1, curr_sum +. (float_of_int (cubic n))) in
     sum (n, 0.)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
