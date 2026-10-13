let rec count_char_position (str1 : string) : int = 
  let rec helper (str1 : string) (index : int) (count : int) : int =
    if index = String.length str1 then count
    else
      let char = String.get str1 index in
      let char_pos = if char >= 'a' then char - 'a' else char - 'A' in
      helper str1 (index + 1) (if char_pos = index then count + 1 else count)
  in helper str1 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
