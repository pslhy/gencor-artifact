let rec find_Average_Of_Cube (n : int) : float = 
    let rec sum_of_cubes (i : int) : int = 
        if i > n then 0 else i * i * i + sum_of_cubes (i + 1) in
    let total_sum = sum_of_cubes 1 in
    float total_sum /. float n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
