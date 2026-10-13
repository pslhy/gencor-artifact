let rec count_char_position (str1 : string) : int = 
  let rec helper (str : string) (count : int) (index : int) : int = 
    if index >= String.length str then count
    else 
      let char = str.[index] in
      let alphabet_pos = if char >= 'a' then char - 'a' else char - 'A' in
      if alphabet_pos = index then helper str (count + 1) (index + 1)
      else helper str count (index + 1)
  in helper str1 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
