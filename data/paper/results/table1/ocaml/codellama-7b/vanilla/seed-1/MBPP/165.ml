let rec count_char_position (str1 : string) : int =
match str1 with
| [] -> 0
| x :: xs ->
  let pos = Char.lowercase_ascii x in
  if pos >= 'a' && pos <= 'z' then
    Char.code x - Char.code 'a' + 1 + count_char_position xs
  else
    count_char_position xs

let main () =
  let str = "some string" in
  print_int (count_char_position str)

main ()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
