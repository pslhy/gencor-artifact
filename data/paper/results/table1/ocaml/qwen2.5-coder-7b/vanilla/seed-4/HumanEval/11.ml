let rec string_xor (a : string) (b : string) : string = 
  let xor_bit (x : char) (y : char) : char = 
    if x = y then '0' else '1' 
  in
  let rec xor_helper a b acc = 
    match a, b with 
    | '', _ | _, '' -> acc 
    | a', b' -> xor_helper (String.tl a') (String.tl b') (acc ^ (String.make 1 (xor_bit (String.get a' 0) (String.get b' 0))))
  in
  xor_helper a b ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
