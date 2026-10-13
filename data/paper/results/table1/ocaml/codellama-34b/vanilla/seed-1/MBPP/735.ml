let rec toggle_middle_bits (n : int) : int =
    let last_bit = n land 1 in
    let first_bit = n lsr 30 in
    let middle_bits = n lsl 1 in
    last_bit lor first_bit lor middle_bits


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
