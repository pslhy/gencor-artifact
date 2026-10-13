let rec string_to_list (string : string) : string list =
  if String.length string = 0 then
    []
  else if String.get string 0 = ' ' then
    string_to_list (String.sub string 1 (String.length string - 1))
  else
    String.sub string 0 1 :: string_to_list (String.sub string 1 (String.length string - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
