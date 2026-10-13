(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int = 
  let rec calculate_mask (n : int) : int =
    if n = 0 then 0
    else (calculate_mask (n / 2) lsl 1) lor 1
  in
  let mask = calculate_mask (n / 2) in
  let first_bit = n land 1 in
  let last_bit = n land 1 lsl ((int_log2 n) + 1) in
  (n lxor mask) lor first_bit lor last_bit

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:33: Unbound value "int_log2" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int = 
  let rec calculate_mask (n : int) : int =
    if n = 0 then 0
    else (calculate_mask (n / 2) lsl 1) lor 1
  in
  let mask = calculate_mask ((n lsr 1) - 1) in
  (n lxor mask) lor (n land 1)

