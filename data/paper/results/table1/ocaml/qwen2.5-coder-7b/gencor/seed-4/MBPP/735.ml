
let rec toggle_middle_bits (n : int) : int = 
  let rec calculate_mask (n : int) : int =
    if n = 0 then 0
    else (calculate_mask (n / 2) lsl 1) lor 1
  in
  let mask = calculate_mask (n / 2) in
  let first_bit = n land 1 in
  let last_bit = n land 1 lsl ((int_of_float (log (float n) 2.0)) * 8) in
  (n lsr 1) land mask lsl 1 lor first_bit lor last_bit;;

(* Example usage:
let result = toggle_middle_bits 23; (* Binary: 10111, Expected output: 8 (Binary: 1000) *)
print_int result;;
*)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
