let rec find_Average_Of_Cube (n : int) : float =
    if n = 1 then
        1.0
    else
        float (n * n * n + find_Average_Of_Cube(n - 1)) / float n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the average of cubes of first n natural numbers. *)
