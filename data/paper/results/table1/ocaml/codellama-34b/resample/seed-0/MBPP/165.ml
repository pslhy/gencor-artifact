(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
let rec count_char_position (str1 : string) : int =
  if str1.[0] == 'z' then 1
  else if str1.[0] == 'Z' then 1
  else if str1.[0] == 'a' then 1
  else if str1.[0] == 'A' then 1
  else if str1.[0] == 'b' then 2
  else if str1.[0] == 'B' then 2
  else if str1.[0] == 'c' then 3
  else if str1.[0] == 'C' then 3
  else if str1.[0] == 'd' then 4
  else if str1.[0] == 'D' then 4
  else if str1.[0] == 'e' then 5
  else if str1.[0] == 'E' then 5
  else if str1.[0] == 'f' then 6
  else if str1.[0] == 'F' then 6
  else if str1.[0] == 'g' then 7
  else if str1.[0] == 'G' then 7
  else if str1.[0] == 'h' then 8
  else if str1.[0] == 'H' then 8
  else if str1.[0] == 'i' then 9
  else if str1.[0] == 'I' then 9
  else if str1.[0] == 'j' then 10
  else if str1.[0] == 'J' then 10
  else if str1.[0] == 'k' then 11
  else if str1.[0] == 'K' then 11
  else if str1.[0] == 'l' then 12
  else if str1.[0] == 'L' then 12
  else if str1.[0] == 'm' then 13
  else if str1.[0] == 'M' then 13
  else if str1.[0] == 'n' then 14
  else if str1.[0] == 'N' then 14
  else if str1.[0] == 'o' then 15
  else if str1.[0] == 'O' then 15
  else if str1.[0] == 'p' then 16
  else if str1.[0] == 'P' then 16
  else if str1.[0] == 'q' then 17
  else if str1.[0] == 'Q' then 17
  else if str1.[0] == 'r' then 18
  else if str1.[0] == 'R' then 18
  else if str1.[0] == 's' then 19
  else if str1.[0] == 'S' then 19
  else if str1.[0] == 't' then 20
  else if str1.[0] == 'T' then 20
  else if str1.[0] == 'u' then 21
  else if str1.[0] == 'U' then 21
  else if str1.[0] == 'v' then 22
  else if str1.[0] == 'V' then 22
  else if str1.[0] == 'w' then 23
  else if str1.[0] == 'W' then 23
  else if str1.[0] == 'x' then 24
  else if str1.[0] == 'X' then 24
  else if str1.[0] == 'y' then 25
  else if str1.[0] == 'Y' then 25
  else if str1.[0] == 'z' then 26
  else if str1.[0] == 'Z' then 26
  else 0

