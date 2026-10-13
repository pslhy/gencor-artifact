(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
let rec left_rotate (n : int) (d : int) : int =
    let n_bits = 32 in
    let n_negative = n < 0 in
    let n_abs = abs n in
    let n_bits = n_bits in
    let d = d mod n_bits in
    let x = (n_abs lsl d) lor (n_abs lsr (n_bits - d)) in
    if n_negative then (-1) * x else x

