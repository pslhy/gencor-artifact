let rec remove_uppercase (str1 : string) : string = 
  let rec helper (str2 : string) : string =
    if String.length str2 = 0 then str2
    else if let ascii_val = int_of_char (String.get str2 0) in ascii_val >= 65 && ascii_val <= 90 then helper (String.sub str2 1 (String.length str2 - 1))
    else (String.get str2 0)  :: helper (String.sub str2 1 (String.length str2 - 1))
  in String.concat "" (List.map (String.of_char) (helper str1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
