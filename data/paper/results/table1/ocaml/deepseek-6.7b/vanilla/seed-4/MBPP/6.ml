let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool =
  if a = b then
    false
  else
    match (a, b) with
    | (_, 0) -> false
    | (0, _) -> false
    | _ -> let diff = a lxor b in
           let rec cnt_set_bits_rec (n : int) (cnt : int) : int =
             match n with
             | 0 -> cnt
             | _ -> cnt_set_bits_rec (n land (n - 1)) (cnt + 1)
           in
           cnt_set_bits_rec diff 0 = 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
