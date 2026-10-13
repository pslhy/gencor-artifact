let rec left_rotate (n : int) (d : int) : int =
    if d = 0 then n
    else
        let n0 = n land 0xFFFFFFFF in
        let d0 = d land 0x1F in
        let left_part = n0 lsr d0 in
        let right_part = (n0 lsl (32 - d0)) land 0xFFFFFFFF in
        left_part lor right_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
