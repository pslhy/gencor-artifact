let rec count_char_position (str1 : string) : int =
  let len = String.length str1 in
  let rec helper (i : int) : int =
    if i = len then 0 else
    if String.lowercase_ascii (String.sub str1 i 1) = String.sub "abcdefghijklmnopqrstuvwxyz" i 1 then 1 + helper (i + 1)
    else helper (i + 1) in
  helper 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
