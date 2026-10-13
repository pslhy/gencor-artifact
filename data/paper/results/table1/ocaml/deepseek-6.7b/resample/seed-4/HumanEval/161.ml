(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec solve (s : string) : string =
  let len = String.length s in
  if len = 0 then s
  else if Char.is_uppercase s.[0] then Char.lowercase s.[0] ^ solve (String.sub s 1 (len-1))
  else if Char.is_lowercase s.[0] then Char.uppercase s.[0] ^ solve (String.sub s 1 (len-1))
  else s.[0] ^ solve (String.sub s 1 (len-1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  let len = String.length s in
  if len = 0 then s
  else if Char.uppercase_ascii s.[0] = s.[0] then Char.lowercase_ascii s.[0] ^ solve (String.sub s 1 (len-1))
  else if Char.lowercase_ascii s.[0] = s.[0] then Char.uppercase_ascii s.[0] ^ solve (String.sub s 1 (len-1))
  else s.[0] ^ solve (String.sub s 1 (len-1))

