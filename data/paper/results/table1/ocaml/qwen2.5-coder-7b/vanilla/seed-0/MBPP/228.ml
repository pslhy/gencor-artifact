let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool = 
  if l <= 0 || r <= 0 || l > r || r > Bitwise_bit_length.bitwise_bit_length n then
    false
  else
    let mask = ((1 lsl (r - 1)) - 1) lxor ((1 lsl (l - 1)) - 1) in
    (n land mask) = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
