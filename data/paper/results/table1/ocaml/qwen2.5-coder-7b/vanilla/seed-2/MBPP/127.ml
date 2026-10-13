let rec multiply_int (x : int) (y : int) : int = 
    if y > 0 then 
        x + multiply_int x (y - 1)
    else if y < 0 then 
        -multiply_int x (-y)
    else 
        0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to multiply two integers. *)
