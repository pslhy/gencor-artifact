let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool =
    match r with
    | n when n <= 0 -> true
    | _ -> let mask = 1 lsr (r-1) in
           let unsetBits n mask =
             ((n land mask) == 0)
           in 
           if (n land (mask-1)) == (n lsr (l-1)) then
             unsetBits n mask
           else
             false && all_Bits_Set_In_The_Given_Range n (l-1) (r-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
