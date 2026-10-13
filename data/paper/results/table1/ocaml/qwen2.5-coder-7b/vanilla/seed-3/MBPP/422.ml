let rec find_Average_Of_Cube (n : int) : float = 
    let rec sum_of_cubes (k : int) : int = 
        if k <= 0 then 0 else k * k * k + sum_of_cubes (k - 1) 
    in
    let total_sum = sum_of_cubes n in
    float total_sum /. float n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
