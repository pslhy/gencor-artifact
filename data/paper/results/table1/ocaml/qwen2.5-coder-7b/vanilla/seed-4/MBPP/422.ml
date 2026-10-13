let rec find_Average_Of_Cube (n : int) : float = 
    let rec calculate_Cubes sum count = 
        if count <= n then 
            calculate_Cubes (sum + (count * count * count)) (count + 1)
        else 
            sum
    in
    let total_Cubes = calculate_Cubes 0 1 in
    float_of_int total_Cubes /. float n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
