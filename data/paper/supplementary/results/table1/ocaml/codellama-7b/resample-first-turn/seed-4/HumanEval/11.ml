let rec string_xor (a : string) (b : string) : string =
  if a = "" || b = "" then ""
  else (int_of_char a) lxor (int_of_char b) |> char_of_int :: string_xor (List.tl a) (List.tl b)
|> String.of_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
