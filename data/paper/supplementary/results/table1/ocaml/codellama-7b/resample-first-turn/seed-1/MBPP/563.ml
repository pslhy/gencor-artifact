let rec extract_values (text : string) : string list =
  let is_quoted s =
    let rec loop n =
      if n = String.length s then
        false
      else if s.[n] = '"' then
        true
      else
        loop (n + 1)
    in
    loop 0
  in
  let get_parsed_string s =
    let open Str in
    match string s with
    | SRE (SRE.Lit _ | SRE.Rep _ | SRE.Alt _ | SRE.Sym _ | SRE.ESym _ |
           SRE.Edge _ | SRE.NotSym _ | SRE.Seq _ | SRE.Plus _ | SRE.Star _ |
           SRE.Query _ | SRE.Atom _ as e) -> SRE.get e
    | e -> error "Not a string pattern"
  in
  if is_quoted text then
    get_parsed_string text
  else
    []

let test_string = "The quick brown fox jumps over the lazy dog";
let result = extract_values test_string;
print_endline result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
