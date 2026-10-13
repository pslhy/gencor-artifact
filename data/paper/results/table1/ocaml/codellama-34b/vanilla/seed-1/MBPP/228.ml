let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool =
    let rec aux (n : int) (l : int) (r : int) : bool =
        let mid = (l + r) / 2 in
        if n < l || n >= r then
            false
        else if (l <= 1 && n = l) || (r <= 1 && n = r) then
            true
        else if l = r then
            true
        else if l < r then
            aux n l mid && aux n (mid + 1) r
        else
            aux n r mid && aux n (mid + 1) l
    in
    aux n l r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
