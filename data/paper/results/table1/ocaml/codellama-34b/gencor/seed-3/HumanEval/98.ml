
let rec count_upper (s : string) : int =
  if String.length s <= 1 then
    0
  else if Char.equal s.[0] 'a' || Char.equal s.[0] 'e' || Char.equal s.[0] 'i' ||
    Char.equal s.[0] 'o' || Char.equal s.[0] 'u' then
    0
  else
    count_upper (String.sub s 2 ((String.length s) - 1)) + 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
