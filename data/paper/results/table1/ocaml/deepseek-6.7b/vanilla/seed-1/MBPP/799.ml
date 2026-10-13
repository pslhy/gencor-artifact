let rec left_rotate (n : int) (d : int) : int =
  if d = 0 then n
  else
    let leftmost_bit = n land (1 lsl 31) in
    let cleared_number = n land (lnot (1 lsl 31)) in
    let shifted_number = cleared_number lsl 1 in
    let rotated_number = if leftmost_bit = 0 then shifted_number else (shifted_number lor 1) in
    left_rotate rotated_number (d - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
