let rec text_lowercase_underscore (text : string) : bool = 
  let rec check (text : string) (previous_is_lowercase : bool) : bool = 
    match text with
    | "" -> previous_is_lowercase
    | '_' :: rest -> previous_is_lowercase && check rest true
    | c :: rest -> 
        if Char.is_lowercase c then check rest true
        else if previous_is_lowercase then false
        else check rest false
  in check text false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
