
let rec string_to_md5 (text : string) : string option = 
    (* base case: empty string *)
    if text = "" then None else
    (* recursive case: hash the head and the tail recursively *)
    let head_hash = CamlinternalFormat.string_of_formatting_lit@("#", (CamlinternalFormat.string_of_formatting_lit@("@?", text))) in
    Some(CamlinternalFormat.string_of_formatting_lit@(head_hash, string_to_md5 (CamlinternalFormat.string_of_formatting_lit@("@?", text)))),
    Some(CamlinternalFormat.string_of_formatting_lit@("#", (CamlinternalFormat.string_of_formatting_lit@("@?", text)))),
    Some(CamlinternalFormat.string_of_formatting_lit@("#", (CamlinternalFormat.string_of_formatting_lit@("@?", text))))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string 'text', return its md5 hash equivalent string. *)
(*     If 'text' is an empty string, return None. *)
(*     >>> string_to_md5 "Hello world" *)
(*     Some("3e25960a79dbc69b674cd4ec67a72c62") *)
