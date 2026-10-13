(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 || n = 1 then
    n
  else
    let rec create_mask m mask =
      if m = 1 then
        mask
      else
        create_mask (m - 1) (mask lsl 1 lor 1)
    in
    let mask = create_mask (int_of_float (log2 (float_of_int n))) 1 in
    n lxor mask

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:43: Unbound value "log2" *)
(*     Hint: Did you mean "log"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_middle_bits (n : int) : int =
  if n = 0 || n = 1 then
    n
  else
    let rec create_mask m mask =
      if m = 1 then
        mask
      else
        create_mask (m - 1) (mask lsl 1 lor 1)
    in
    let mask = create_mask (int_of_float (Float.log (float_of_int n))) 1 in
    n lxor mask

