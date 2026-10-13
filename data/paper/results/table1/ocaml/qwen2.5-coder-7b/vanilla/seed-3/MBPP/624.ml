let rec is_upper (string : string) : string = 
  let rec helper (index : int) (len : int) (result : string) : string = 
    if index >= len then result
    else 
      let current_char = string.[index] in
      let upper_char = if current_char >= 'a' && current_char <= 'z' then current_char - 32 else current_char in
      helper (index + 1) len (result ^ (String.make 1 upper_char)) 
  in
  helper 0 (String.length string) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
