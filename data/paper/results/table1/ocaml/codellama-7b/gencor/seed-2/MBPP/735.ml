
let rec toggle_middle_bits (n : int) : int =
  match n with
  | 0 | 1 -> n
  | _ ->
      let half = n lsr 1 in
      let lower_half = toggle_middle_bits half in
      let upper_half = toggle_middle_bits (n - half - 1) in
      lower_half lor (upper_half lsl 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
