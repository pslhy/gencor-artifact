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
    let code = ref 0 in
    for i = 0 to String.length text - 1 do
      code := !code * 17 + char_code text.[i]
    done;
    Some(string_of_int !code)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "char_code" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_md5 (text : string) : string option =
  if text = "" then
    None
  else
    let code = ref 0 in
    for i = 0 to String.length text - 1 do
      code := !code * 17 + int_of_char text.[i]
    done;
    Some(string_of_int !code)

