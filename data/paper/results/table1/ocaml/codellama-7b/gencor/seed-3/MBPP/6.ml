
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = String.length (Int.to_string a) - 1
    and b_length = String.length (Int.to_string b) - 1 in
    if a_length != b_length then false
    else
      let a_msb = a lsr a_length in
      let b_msb = b lsr a_length in
      if a_msb != b_msb then true
      else
        let a_mask = a_msb - 1 in
        let b_mask = b_msb - 1 in
        let a_masked = a land a_mask in
        let b_masked = b land b_mask in
        differ_At_One_Bit_Pos a_masked b_masked

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
