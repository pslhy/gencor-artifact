let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool =
    if l > r then true
    else
        let mask = 1 lsl (r - 1) in
        if (n land mask) = 0 then false
        else
            let n' = n lsr (l - 1) in
            if (n' land (n' + 1)) = 0 then true
            else
                let pos = leftmost_Set_Bit_Pos n' in
                let end_pos = r - l + 1 in
                if pos = end_pos then false
                else all_Bits_Set_In_The_Given_Range n (pos + 1) r


and leftmost_Set_Bit_Pos (n : int) : int =
    let rec helper (n : int) (counter : int) : int =
        if n land 1 = 1 then counter
        else helper (n lsr 1) (counter + 1)
    in
    helper n 0

let () =
    Printf.printf "%b\n" (all_Bits_Set_In_The_Given_Range 20 2 5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
