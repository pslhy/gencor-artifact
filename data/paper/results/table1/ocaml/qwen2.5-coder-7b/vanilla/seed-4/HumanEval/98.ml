let rec count_upper (s : string) : int = 
  let is_upper_vowel c = 
    let lower_c = Char.lowercase_ascii c in
    lower_c = 'a' || lower_c = 'e' || lower_c = 'i' || lower_c = 'o' || lower_c = 'u'
  in
  let rec helper (s : string) (index : int) (count : int) : int = 
    if index >= String.length s then count
    else if index mod 2 = 0 && is_upper_vowel (s.[index]) then 
      helper s (index + 1) (count + 1)
    else
      helper s (index + 1) count
  in
  helper s 0 0


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
