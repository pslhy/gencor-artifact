let rec left_rotate (n : int) (d : int) : int = 
  let mask = 0xFFFFFFFF in
  let shifted_left = n lsl d in
  let shifted_right = n lsr (32 - d) in
  (shifted_left lor shifted_right) land mask


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
