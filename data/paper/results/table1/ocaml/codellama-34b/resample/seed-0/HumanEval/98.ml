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
    if s = "" then 0
    else if s.[0] = 'A' || s.[0] = 'E' || s.[0] = 'I' || s.[0] = 'O' || s.[0] = 'U' then
        if s.[1] % 2 = 0 then 1 + count_upper (s.[2..]) else 0 + count_upper (s.[2..])
    else 0 + count_upper (s.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:54: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int =
  if s = "" then 0
  else if s.[0] = 'A' || s.[0] = 'E' || s.[0] = 'I' || s.[0] = 'O' || s.[0] = 'U' then
    1 + count_upper (String.sub s 1 ((String.length s) - 1))
  else 0 + count_upper (String.sub s 1 ((String.length s) - 1))

