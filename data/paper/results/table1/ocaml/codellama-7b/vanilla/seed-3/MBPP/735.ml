let rec toggle_middle_bits (n : int) : int =
  if n = 0 || n = 1 then n else
    let first_bit = n land 1 in
    let rest = toggle_middle_bits (n lsr 1) in
    let last_bit = rest land 1 in
    (n land 2) lor (rest lsr 1) lor (first_bit lxor last_bit)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
