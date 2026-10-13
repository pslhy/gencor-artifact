let rec flip_case (string : string) : string = 
    match string with 
    | head :: tail -> 
    (match Char.lowercase head with 
    | 'a'..'z' -> Char.uppercase head 
    | 'A'..'Z' -> Char.lowercase head 
    | _ -> head 
    ) 
    :: flip_case tail 
    | [] -> [] in

flip_case "Hello"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
