let rec count_upper (s : string) : int =
  match s with
  | "" -> 0
  | (h :: _) ->
    if (h = 'A' || h = 'E' || h = 'I' || h = 'O' || h = 'U') &&
       s.[0] = h then
      count_upper (String.sub s 2 (String.length s - 2)) + 1
    else
      count_upper (String.sub s 2 (String.length s - 2))


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
