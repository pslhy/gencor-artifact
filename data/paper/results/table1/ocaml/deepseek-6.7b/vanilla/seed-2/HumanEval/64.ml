let rec vowels_count (s : string) : int =
  let len = String.length s in
  if len = 0 then 0
  else
    let c = String.lowercase_ascii (String.sub s 0 1) in
    if c = "a" || c = "e" || c = "i" || c = "o" || c = "u" || (c = "y" && len = 1) then
      1 + vowels_count (String.sub s 1 (len - 1))
    else
      vowels_count (String.sub s 1 (len - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function vowels_count which takes a string representing *)
(*     a word as input and returns the number of vowels in the string. *)
(*     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a *)
(*     vowel, but only when it is at the end of the given word. *)
(*     Example: *)
(*     >>> vowels_count "abcde" *)
(*     2 *)
(*     >>> vowels_count "ACEDY" *)
(*     3 *)
