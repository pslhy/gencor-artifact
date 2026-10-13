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
  if s = "" then s
  else
    let character = s.[0] in
    let should_swap =
      match character with
      | 'a' .. 'z' -> true
      | 'A' .. 'Z' -> false
      | _ -> false
    in
    let result =
      if should_swap then
        String.make 1 (Char.uppercase character)
      else
        String.make 1 character
    in
    result ^ solve (String.sub s 1 (String.length s - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:24: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  if String.length s = 0 then s else
    let character = s.[0] in
    let should_swap = false in
    let result : string = "" in
    if should_swap then
      String.make 1 (Char.uppercase character)
    else
      String.make 1 character
    ^ solve (String.sub s 1 (String.length s - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:22: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  if String.length s = 0 then s else
    let character = s.[0] in
    let should_swap = false in
    let result : string = "" in
    if should_swap then
      let uppercase_char = Char.uppercase character in
      result ^ Char.escaped uppercase_char
    else
      result ^ Char.escaped character
    ^ solve (String.sub s 1 (String.length s - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:28: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  if String.length s = 0 then s else
    let character = s.[0] in
    let should_swap = false in
    let result : string = "" in
    if should_swap then
      result ^ (String.mkchar (Char.uppercase character))
    else
      result ^ (String.mkchar character)
    ^ solve (String.sub s 1 (String.length s - 1))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:17: Unbound value "String.mkchar" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  if String.length s = 0 then s else
    let character = s.[0] in
    let should_swap = false in
    let result : string = "" in
    if should_swap then
      result ^ (String.make 1 (Char.uppercase character))
    else
      result ^ (String.make 1 character)
    ^ solve (String.sub s 1 (String.length s - 1))

