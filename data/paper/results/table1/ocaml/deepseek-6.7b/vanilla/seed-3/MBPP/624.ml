let rec is_upper (string : string) : string =
    match string with
    | "" -> ""
    | x -> Char.uppercase_ascii (String.get string 0) ^ is_upper (String.sub string 1 (String.length string - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
