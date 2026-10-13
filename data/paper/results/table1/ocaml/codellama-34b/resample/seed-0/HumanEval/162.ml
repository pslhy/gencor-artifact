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
    if text = "" then None
    else
        let hash = Digestif.SHA1.digest_string text in
        Some(Base64.encode_string hash)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
    if text = "" then None
    else
        let hash = Digestif.SHA1.digest_string text in
        Some(Base64.encode_string hash)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:20: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
    if text = "" then None
    else
        let hash = Digest.string text in
        Some(Base64.encode_string hash)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:14: Unbound module "Base64" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
    if text = "" then None
    else
        let hash = Digest.string text in
        Some(Base64.encode_bytes hash)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:14: Unbound module "Base64" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
    if text = "" then None
    else
        let hash = Digestif.string text in
        Some(Base64.encode hash)

