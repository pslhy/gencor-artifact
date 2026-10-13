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
    (* base case: empty string *)
    if text = "" then None else
    (* recursive case: hash the head and the tail recursively *)
    let head_hash = bytes_to_hex (Digestif.MD5.string text) in
    let tail_hash = string_to_md5 (String.sub text 1 (String.length text - 1)) in
    (* combine the head and tail hashes *)
    Some (head_hash ^ tail_hash)

and bytes_to_hex (bytes : Bytes.t) : string =
    let hex_digits = "0123456789abcdef" in
    let bytes_as_hex_string = Buffer.create (Bytes.length bytes * 2) in
    Bytes.iter (fun byte ->
        Buffer.add_char bytes_as_hex_string hex_digits.[byte mod 16];
        Buffer.add_char bytes_as_hex_string hex_digits.((byte mod 16) / 16)
    ) bytes;
    Buffer.contents bytes_as_hex_string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:35: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option = 
    (* base case: empty string *)
    if text = "" then None else
    (* recursive case: hash the head and the tail recursively *)
    let head_hash = digestif#MD5.string text in
    let tail_hash = string_to_md5 (String.sub text 1 (String.length text - 1)) in
    (* combine the head and tail hashes *)
    Some (head_hash ^ tail_hash)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option = 
    (* base case: empty string *)
    if text = "" then None else
    (* recursive case: hash the head and the tail recursively *)
    let head_hash = Digestif.MD5.string text in
    let tail_hash = string_to_md5 (String.sub text 1 (String.length text - 1)) in
    (* combine the head and tail hashes *)
    Some (head_hash ^ tail_hash)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:21: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
  (* base case: empty string *)
  if text = "" then None else
  (* recursive case: hash the head and the tail recursively *)
  let head_hash = Digestif.MD5.string (String.sub text 0 1) in
  let tail_hash = string_to_md5 (String.sub text 1 (String.length text - 1)) in
  (* combine the head and tail hashes *)
  Some (head_hash ^ tail_hash)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound module "Digestif" *)
(*     Hint: Did you mean "Digest"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
  (* base case: empty string *)
  if text = "" then None else
  (* recursive case: hash the head and the tail recursively *)
  let head_hash = Digest.string (String.sub text 0 1) in
  let tail_hash = string_to_md5 (String.sub text 1 (String.length text - 1)) in
  (* combine the head and tail hashes *)
  Some (head_hash ^ tail_hash)

