let rec first_repeated_char (str1 : string) : string option = 
  let rec check (str2 : string) (seen : bool array) : string option =
    if str2 = "" then None
    else
      let char = str2.[0] in
      let char_index = Char.code char - Char.code 'a' in
      if seen.(char_index) then Some char
      else 
        let new_seen = Array.copy seen in
        new_seen.(char_index) <- true;
        check (String.sub str2 1 (String.length str2 - 1)) new_seen
  in
  check str1 (Array.make 26 false)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
