let rec make_palindrome (string : string) : string =
  let is_palindrome (string : string) : bool =
    let rev_string = String.rev string in
    rev_string = string
  in
  if is_palindrome string then
    string
  else
    let (prefix, _) = Bcs.string_span ~equal:(fun _ _ -> false) (fun c -> false) string rev_string in
    let rev_prefix = String.rev prefix in
    make_palindrome (string ^ rev_prefix)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Find the shortest palindrome that begins with a supplied string. *)
(*     Algorithm idea is simple: *)
(*     - Find the longest postfix of supplied string that is a palindrome. *)
(*     - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix. *)
(*     >>> make_palindrome "" *)
(*     "" *)
(*     >>> make_palindrome "cat" *)
(*     "catac" *)
(*     >>> make_palindrome "cata" *)
(*     "catac" *)
