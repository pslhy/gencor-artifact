let rec string_xor (a : string) (b : string) : string =
  match (a, b) with
  | "", "" -> ""
  | (x :: xs), (y :: ys) ->
      let binary_xor = if x = y then "0" else "1" in
      binary_xor ^ string_xor xs ys
  | _ -> failwith "Strings must be of the same length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
