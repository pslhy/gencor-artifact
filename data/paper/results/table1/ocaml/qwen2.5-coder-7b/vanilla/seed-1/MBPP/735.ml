let rec toggle_middle_bits (n : int) : int = 
  let rec get_length num =
    if num = 0 then 0 else 1 + get_length (num land (num - 1))
  in
  let len = get_length n in
  let first_bit = 1 lsl (len - 1) in
  let last_bit = 1 in
  let mask = (1 lsl (len - 1)) - 2 in
  n land mask lor first_bit lor last_bit


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
