let rec count_upper (s : string) : int = 
  let uppercase_vowels = "AEIOU" in
  let rec count acc i =
    if i >= String.length s then acc
    else if i mod 2 = 0 && uppercase_vowels |> String.contains s.[i] then
      count (acc + 1) (i + 1)
    else count acc (i + 1)
  in count 0 0


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
