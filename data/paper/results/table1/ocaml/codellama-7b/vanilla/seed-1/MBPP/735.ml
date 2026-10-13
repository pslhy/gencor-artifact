let rec toggle_middle_bits (n : int) : int =
match n with
| 0 -> 0
| 1 -> 1
| _ -> let half_len = (n lsl 1) lxor n in
       let half_len_minus_1 = half_len - 1 in
       half_len lxor (half_len_minus_1 lsr 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
