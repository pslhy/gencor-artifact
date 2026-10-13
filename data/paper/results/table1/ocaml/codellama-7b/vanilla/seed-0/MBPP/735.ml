let rec toggle_middle_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)

let rec toggle_all_bits (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    next_num lor (if next_bit then 1 else 0)
    lor toggle_all_bits (next_num) in

let rec toggle_first_n_bits (n : int, first_n_bits : list<int>) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_bit = (n land 1) = 0 in
    let next_num = n lsr 1 in
    let remaining_bits = toggle_all_bits (next_num) in
    if List.exists (fun (first_n_bit : int) -> first_n_bit = next_bit) first_n_bits then
      next_num lor (if next_bit then 1 else 0)
    else
      remaining_bits lor (if next_bit then 1 else 0) in


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
