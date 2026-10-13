let rec is_lower (string : string) : string =
    match string with
    | [] -> []
    | hd :: tl -> hd :: is_lower tl

let is_lowercase (string : string) : bool =
    match string with
    | [] -> true
    | hd :: tl -> is_lowercase hd && is_lowercase tl

let convert_to_lower (string : string) : string =
    let () = print_string ("The lowercase version of " ^ string ^ " is: ") in
    let () = print_string (is_lower string) in
    let () = print_newline () in
    string

let _ = convert_to_lower "HeLLo WoRLd"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
