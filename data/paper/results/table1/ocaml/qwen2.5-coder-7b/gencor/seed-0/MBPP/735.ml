
let rec toggle_middle_bits (n : int) : int = 
  let size = Int64.to_int (Float.log2 (float_of_int (n lsr 1)) +. 1.0) in
  let mask = Int64.shift_left (Int64.of_int 1) (size - 1) in
  n lxor (Int64.to_int mask lor (Int64.shift_left (Int64.of_int 1) size))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
