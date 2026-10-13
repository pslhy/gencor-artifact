(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string 'text', return its md5 hash equivalent string. *)
(*     If 'text' is an empty string, return None. *)
(*     >>> string_to_md5 "Hello world" *)
(*     Some("3e25960a79dbc69b674cd4ec67a72c62") *)
let rec string_to_md5 (text : string) : string option = 
    (* base case: empty string with None for its option type *)
    if text = "" then 
        None 
    (* Inductive case: Not an empty string with hashed equivalent *)
    else 
        Some(Digestif.SHA512.to_hex (Digestif.SHA512.digest_string text))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:14: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
    if text = "" then
        None
    else
        Some(Digest.string text)

