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
  let rec loop i result =
    if i = len then String.rev result
    else
      let c = String.get s i in
      if Char.is_letter c then loop (i + 1) (Char.lowercase_ascii c :: result)
      else loop (i + 1) (c :: result)
  in
  loop 0 []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  let len = String.length s in
  let rec loop i result =
    if i < 0 then result
    else
      let c = String.get s i in
      if Char.is_letter c then loop (i - 1) (Char.lowercase_ascii c :: result)
      else loop (i - 1) (c :: result)
  in
  loop (len - 1) []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.is_letter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  let len = String.length s in
  let rec loop i result =
    if i < 0 then result
    else
      let c = String.get s i in
      if Char.is_lowercase c then loop (i - 1) (Char.uppercase_ascii c :: result)
      else loop (i - 1) (Char.lowercase_ascii c :: result)
  in
  loop (len - 1) []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
  let len = String.length s in
  let rec loop i result =
    if i < 0 then result
    else
      let c = String.get s i in
      if Char.code c <= 90 && Char.code c >= 65 then loop (i - 1) (Char.chr (Char.code c + 32) :: result)
      else if Char.code c <= 122 && Char.code c >= 97 then loop (i - 1) (Char.chr (Char.code c - 32) :: result)
      else loop (i - 1) (c :: result)
  in
  loop (len - 1) []

