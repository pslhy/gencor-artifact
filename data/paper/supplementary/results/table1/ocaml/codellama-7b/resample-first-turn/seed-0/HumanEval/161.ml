let rec solve (s : string) : string =
  if s = "" then s else
  let first = s.[0] in
  let rest = solve (String.sub s 1 (String.length s - 1)) in
  match first with 'a'..'z' -> String.make 1 (Char.uppercase first) ^ rest
  | 'A'..'Z' -> String.make 1 (Char.lowercase first) ^ rest
  | _ -> first :: rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
