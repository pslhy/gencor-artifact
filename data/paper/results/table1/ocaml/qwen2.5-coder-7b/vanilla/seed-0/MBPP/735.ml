let rec toggle_middle_bits (n : int) : int = 
  let size = Int64.to_int (Bitstring.bitstring_length (Int64.of_int n)) in
  if size <= 2 then n 
  else
    let first_bit = (n land 1) lsl (size - 1) in
    let last_bit = (n land 1) in
    let mask = ((1 lsl (size - 2)) - 1) lsl 1 in
    (first_bit lor last_bit) lor (n land mask)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
