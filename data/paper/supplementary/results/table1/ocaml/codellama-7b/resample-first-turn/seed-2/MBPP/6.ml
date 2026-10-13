let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
    let mask = 1 lsl (highest_bit a + highest_bit b) in
    (a lxor b) land mask <> 0

let highest_bit n =
    if n <= 0 then
        0
    else
        let rec loop n b =
            if n land 1 = 1 then
                b
            else
                loop (n lsr 1) (b + 1)
        in
        loop n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
