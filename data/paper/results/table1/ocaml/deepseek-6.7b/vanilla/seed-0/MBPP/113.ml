let rec check_integer (text : string) : bool =
    let len = String.length text in
    if len = 0 then false
    else if len = 1 then Char.code (String.get text 0) = 45
          || Char.code (String.get text 0) >= 48 && Char.code (String.get text 0) <= 57
    else if Char.code (String.get text 0) = 45 then check_integer (String.sub text 1 (len-1))
    else if Char.code (String.get text 0) >= 48 && Char.code (String.get text 0) <= 57
           then check_integer (String.sub text 1 (len-1))
           else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
