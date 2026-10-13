let rec left_rotate (n : int) (d : int) : int =
  let mask = 0xFFFFFFFF in
  let n_wrapped = n land mask in
  let d_wrapped = d land 0x1F in
  let shifted = n_wrapped lsl d_wrapped in
  let carry = n_wrapped asr (32 - d_wrapped) in
  shifted lor carry


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
