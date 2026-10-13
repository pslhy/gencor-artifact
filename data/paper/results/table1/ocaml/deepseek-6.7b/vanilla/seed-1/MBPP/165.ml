let rec count_char_position (str1 : string) : int =
  let lowercase_str = String.lowercase_ascii str1 in
  let rec helper (str : string) (index : int) (count : int) : int =
    if index >= String.length str then count
    else if Char.code (String.sub str index 1 |> String.get)
           = Char.code (String.sub "abcdefghijklmnopqrstuvwxyz" index 1 |> String.get)
         then helper str (index + 1) (count + 1)
         else helper str (index + 1) count in
  helper lowercase_str 0 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
