let rec left_rotate (n : int) (d : int) : int = 
  let size = 32 in
  let mask = (1 lsl (size - 1)) in
  let most_significant_bits = (n land mask) lsr (size - d) in
  (n lsl d) lor most_significant_bits

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
