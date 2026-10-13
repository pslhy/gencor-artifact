let rec count_char_position (str1 : string) : int =
  if str1 = "" then
    0
  else
    let n = count_char_position (Str.tail str1) in
    if Char.lowercase (Str.head str1) = char_of_int (Char.code 'a' + n) then
      n + 1
    else
      n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
