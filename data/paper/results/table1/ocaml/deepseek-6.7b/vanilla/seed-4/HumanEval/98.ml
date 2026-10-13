let rec count_upper (s : string) : int =
  let len = String.length s in
  if len = 0 then 0
  else if len = 1 then
    if s.[0] = 'A' || s.[0] = 'E' || s.[0] = 'I' || s.[0] = 'O' || s.[0] = 'U' then 0
    else 1
  else
    let first_count =
      if s.[0] = 'A' || s.[0] = 'E' || s.[0] = 'I' || s.[0] = 'O' || s.[0] = 'U' then 0
      else 1
    in
    let rest_count = count_upper (String.sub s 2 (len-2)) in
    first_count + rest_count


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
