let rec left_rotate (n : int) (d : int) : int = 
    let mask = Int32.to_int (Int32.shift_left 1L (32 - d)) in
    let right_bits = n land mask in
    (n lsl d) lor (right_bits lsr (32 - d))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
