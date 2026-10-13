let rec count_char_position (str1 : string) : int =
  if String.length str1 <= 1 then 0
  else if Char.uppercase_ascii (String.get str1 0) = Char.uppercase_ascii 'A' then 1 + count_char_position (String.sub str1 1 (String.length str1 - 1))
  else count_char_position (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
