let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    let open Re in
    let regex = compile (seq [string pattern]) in
    match exec ~full:true ~sub:(fun acc m -> m) regex text with
    | None -> ("", -1, -1)
    |Some s -> (c_string s, start s, stop s - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
