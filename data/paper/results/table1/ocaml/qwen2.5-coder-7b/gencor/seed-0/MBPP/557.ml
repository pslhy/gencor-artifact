
let rec toggle_string (string : string) : string = 
  let rec helper (s : string) (idx : int) : string = 
    if idx >= String.length s then s else
      let current_char = s.[idx] in
      let toggled_char = 
        if Char.lowercase_ascii current_char = current_char then 
          Char.uppercase_ascii current_char 
        else 
          Char.lowercase_ascii current_char in
      helper (String.sub s 0 idx ^ String.make 1 toggled_char ^ String.sub s (idx + 1) (String.length s - idx - 1)) (idx + 1) in
  helper string 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
