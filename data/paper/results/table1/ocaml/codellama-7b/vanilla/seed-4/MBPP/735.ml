let rec toggle_middle_bits (n : int) : int =
  if n = 0 then
    0
  else if n = 1 then
    1
  else
    let last_bit = n land 1 in
    let n' = n lsr 1 in
    let middle_bits = toggle_middle_bits (n' - 1) in
    middle_bits lor last_bit


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
