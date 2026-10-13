let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool = 
    (* base case: if the range is empty, return true *)
    if l > r then 
        true 
    (* otherwise: check if the first bit in the range is set *)
    else 
        (* if the first bit is set, return false *)
        if n land (1 lsl l) = 0 then 
            false 
        (* otherwise, check the remaining bits in the range *)
        else 
            all_Bits_Set_In_The_Given_Range n (l+1) r 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
