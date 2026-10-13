(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
let rec left_rotate (n : int) (d : int) : int =
    let mask = 0b11111111111111111111111111111111 in
    let n = n land mask in
    if d = 0 then
        n
    else
        let bits = n lsr 32 in
        let bits = bits lor (n lsl d) in
        let bits = bits land mask in
        left_rotate bits (d - 32)

