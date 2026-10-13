let rec flip_case (string : string) : string = 
  let rec flip acc idx =
    if idx >= String.length string then 
      List.rev acc
    else
      let char = String.unsafe_get string idx in
      let new_char = 
        if 'a' <= char && char <= 'z' then Char.uppercase_ascii char
        else if 'A' <= char && char <= 'Z' then Char.lowercase_ascii char
        else char
      in
      flip (new_char::acc) (idx + 1)
  in
  String.concat "" (flip [] 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
