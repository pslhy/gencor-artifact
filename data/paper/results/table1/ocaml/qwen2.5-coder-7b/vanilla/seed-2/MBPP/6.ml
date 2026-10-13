let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool = 
    let rec loop x count = 
        if x = 0 then count = 1
        else if (x land 1) = 0 then loop (x lsr 1) count
        else if (x land 1) = 1 && count = 0 then loop (x lsr 1) (count + 1)
        else false
    in
    loop (a lxor b) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
