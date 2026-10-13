let rec toggle_middle_bits (n : int) : int = match n with
  | 0 | 1 -> n
  | _ ->
    let first_bit = (n land 1) lsl (String.length (Int.to_string n) - 1) in
    let last_bit = n land 1 in
    let mask = (2 lsl (String.length (Int.to_string n) - 2)) - 1 in
    (n land (first_bit lor last_bit)) lor (mask lsl 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
