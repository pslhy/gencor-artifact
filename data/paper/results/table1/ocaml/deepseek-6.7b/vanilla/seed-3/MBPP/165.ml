let rec count_char_position (str1 : string) : int =
  let str2 = String.lowercase_ascii str1 in
  let rec loop i acc =
    if i >= String.length str2 then acc
    else if (int_of_char str2.[i]) - 97 = i then loop (i + 1) (acc + 1)
    else loop (i + 1) acc
  in
  loop 0 0

(* Test *)
print_int (count_char_position "Hello")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
