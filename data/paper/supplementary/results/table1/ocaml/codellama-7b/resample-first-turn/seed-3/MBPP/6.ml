let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then false
  else
    let a_length = num_bits a
    and b_length = num_bits b
    in
    let diff = a_length - b_length
    in
    if diff < 0 then differ_At_One_Bit_Pos (a <<< -diff) b
    else
      let a_high = a >>> (a_length - 1)
      and b_high = b >>> (b_length - 1)
      in
      if a_high <> b_high then true
      else
        let a_low = a &&& (complement a_high)
        and b_low = b &&& (complement b_high)
        in
        differ_At_One_Bit_Pos a_low b_low


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
