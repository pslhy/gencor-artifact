let rec perimeter_pentagon (a : int) : int = 
    (* base case: a = 1 *)
    if (a = 1) then 
        5
    else 
        (* rec case: a >= 2 *)
        a + perimeter_triangle(a-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the perimeter of a regular pentagon from the length of its sides. *)
