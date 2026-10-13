let rec count_char_position (str1 : string) : int = 
  let is_alpha c = Char.code c >= Char.code 'a' && Char.code c <= Char.code 'z' || 
             Char.code c >= Char.code 'A' && Char.code c <= Char.code 'Z' in
  
  let rec helper str1 idx count = 
    if idx = String.length str1 then count 
    else 
      let c = str1.[idx] in 
      if is_alpha c && Char.lowercase_ascii c = Char.chr (idx + Char.code 'a') then 
       helper str1 (idx + 1) (count + 1)
      else 
        helper str1 (idx + 1) count 
  in
  helper str1 0 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
