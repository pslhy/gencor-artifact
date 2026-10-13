let rec count_upper (s : string) : int = 
  let is_vowel ch = ch = 'A' || ch = 'E' || ch = 'I' || ch = 'O' || ch = 'U' in
  let rec inner acc (s : string) i : int = 
    if i >= String.length s then acc
    else if i mod 2 = 0 && is_vowel s.[i] then inner (acc + 1) s (i + 1)
    else inner acc s (i + 1)
  in inner 0 s 0


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
