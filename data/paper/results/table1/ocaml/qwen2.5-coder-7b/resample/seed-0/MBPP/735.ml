(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int = 
  let size = Int64.to_int (Bitstring.bitstring_length (Int64.of_int n)) in
  if size <= 2 then n 
  else
    let first_bit = (n land 1) lsl (size - 1) in
    let last_bit = (n land 1) in
    let mask = ((1 lsl (size - 2)) - 1) lsl 1 in
    (first_bit lor last_bit) lor (n land mask)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Unbound module "Bitstring" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int = 
  let size = Printf.sprintf "%b" n |> String.length in
  if size <= 2 then n 
  else
    let first_bit = (n land 1) lsl (size - 1) in
    let last_bit = (n land 1) in
    let mask = ((1 lsl (size - 2)) - 1) lsl 1 in
    (first_bit lor last_bit) lor (n land mask)
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int = 
  let size = Int32.to_int (Int32.bit_length (Int32.of_int n)) in
  if size <= 2 then n 
  else
    let first_bit = (n land 1) lsl (size - 1) in
    let last_bit = (n land 1) in
    let mask = ((1 lsl (size - 2)) - 1) lsl 1 in
    (first_bit lor last_bit) lor (n land mask)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:28: Unbound value "Int32.bit_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int = 
  let size = 32 - (int_of_float (log (float n)) /. log 2.) in
  if size <= 2 then n 
  else
    let first_bit = (n land 1) lsl (size - 1) in
    let last_bit = (n land 1) in
    let mask = ((1 lsl (size - 2)) - 1) lsl 1 in
    (first_bit lor last_bit) lor (n land mask)

