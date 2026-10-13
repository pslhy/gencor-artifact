let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool = 
    (* XOR the two numbers with the mask corresponding to 101010101. *)
    let res = a ^ b and
        
    if res = 0 then (* If all bits are equal, differ_At_One_Bit_Pos returns true.*)
        true
    else if res = a + 1 (* If the difference is one, differ_At_One_Bit_Pos returns true.*)
        true
    else if res = a - 1 (* If the difference is one, differ_At_One_Bit_Pos returns true.*)
        true
    else 
        false 



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
