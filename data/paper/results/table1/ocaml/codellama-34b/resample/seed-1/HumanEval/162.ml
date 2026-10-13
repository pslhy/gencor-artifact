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
    let byteString = Bytes.of_string text in
    let md5 = Digest.string (Bytes.to_string byteString) in
    let hexString = Digest.to_hex md5 in
    Some(hexString)

let () =
    let text = "Hello world" in
    match string_to_md5 text with
    | Some(md5) -> print_endline md5
    | None -> print_endline "None"

