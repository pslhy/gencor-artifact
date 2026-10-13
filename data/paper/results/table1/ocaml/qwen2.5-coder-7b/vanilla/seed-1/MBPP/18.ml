let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec check (str: string) (char: char) : bool = 
    str = "" || char <> str.[0] && check (String.sub str 1 (String.length str - 1)) char in
  if string = "" then ""
  else if check second_string string.[0] then string.[0] :: remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string
  else remove_dirty_chars (String.sub string 1 (String.length string - 1)) second_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
