let rec toggle_string (string : string) : string =
  if string = "" then ""
  else
    let first = String.get string 0 in
    let rest = String.sub string 1 (String.length string - 1) in
    begin
      match first with
      | 'a'..'z' -> String.make 1 (char_of_int (int_of_char first - 32)) ^ toggle_string rest
      | 'A'..'Z' -> String.make 1 (char_of_int (int_of_char first + 32)) ^ toggle_string rest
      | _ -> string
    end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
