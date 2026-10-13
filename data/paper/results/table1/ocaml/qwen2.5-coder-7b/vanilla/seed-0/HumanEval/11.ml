let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper (a : char list) (b : char list) (res : char list) : char list =
    match (a, b) with
    | ([], []) -> List.rev res
    | (a1::a2, b1::b2) -> xor_helper a2 b2 (char_xor a1 b1 :: res)
    | _ -> failwith "Input strings must be of the same length"
  and char_xor a b : char =
    if a = b then '0' else '1'
  in
  xor_helper (String.to_list a) (String.to_list b) []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
