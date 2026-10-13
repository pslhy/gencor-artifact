(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
let rec count_upper (s : string) : int =
  let len = String.length s in
  if len = 0 then 0
  else
    let head = String.sub s 0 1 in
    let tail = String.sub s 1 (len - 1) in
    if head = String.uppercase head && List.mem head ['A';'E';'I';'O';'U'] then
      (if len mod 2 = 0 then 1 else 0) + count_upper tail
    else count_upper tail

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:15: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int =
  if String.length s = 0 then 0
  else
    let char_at_head = String.get s 0 in
    let tail = String.sub s 1 (String.length s - 1) in
    if Char.uppercase_ascii char_at_head = 'A' || Char.uppercase_ascii char_at_head = 'E' || Char.uppercase_ascii char_at_head = 'I' || Char.uppercase_ascii char_at_head = 'O' || Char.uppercase_ascii char_at_head = 'U' then
      (if String.length s mod 2 = 0 then 1 else 0) + count_upper tail
    else count_upper tail

