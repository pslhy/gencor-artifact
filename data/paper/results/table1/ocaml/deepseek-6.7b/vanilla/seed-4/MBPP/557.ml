let rec toggle_string (string : string) : string =
  let len = String.length string in
  let rec toggle_char_acc (i : int) (acc : string) : string =
    if i < len then
      let char = String.get string i in
      let new_char =
        if Char.code char >= 65 && Char.code char <= 90 then
          Char.uppercase_ascii char
        else if Char.code char >= 97 && Char.code char <= 122 then
          Char.lowercase_ascii char
        else
          char
      in
      toggle_char_acc (i + 1) (acc ^ String.make 1 new_char)
    else
      acc
  in
  toggle_char_acc 0 "";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
