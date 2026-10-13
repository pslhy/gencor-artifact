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
  if String.length s <= 1 then
    0
  else if Char.is_uppercase s.[0] && Char.is_uppercase s.[1] then
    1 + count_upper (String.sub s 2 ((String.length s) - 2))
  else
    count_upper (String.sub s 1 ((String.length s) - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int =
  if String.length s <= 1 then
    0
  else if s.[0] >= 'A' && s.[0] <= 'Z' && s.[1] >= 'A' && s.[1] <= 'Z' then
    1 + count_upper (String.sub s 2 ((String.length s) - 2))
  else
    count_upper (String.sub s 1 ((String.length s) - 1))

