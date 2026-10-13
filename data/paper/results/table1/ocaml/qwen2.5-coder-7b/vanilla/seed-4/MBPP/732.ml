let rec replace_specialchar (text : string) : string = 
  let rec replace acc s = 
    match s with 
    | "" -> String.(concat acc)
    | '.' | ',' | ' ' :: rest -> replace (acc ^ ":") rest
    | h :: t -> replace (acc ^ (String.make 1 h)) t
  in replace "" text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
