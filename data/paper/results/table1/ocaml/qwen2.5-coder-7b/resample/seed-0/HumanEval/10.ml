(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec make_palindrome (string : string) : string = 
  let is_palindrome (s : string) : bool = 
    s = (String.rev s) in
  
  let find_palindrome_suffix (s : string) : int = 
    let len = String.length s in
    let rec loop i = 
      if i >= len then len
      else if is_palindrome (String.sub s i (len - i)) then i
      else loop (i + 1) in
    loop 0 in
  
  let pal_len = find_palindrome_suffix string in
  let prefix_len = String.length string - pal_len in
  let prefix = String.sub string 0 prefix_len in
  string ^ (String.rev prefix)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:10: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string = 
  let is_palindrome (s : string) : bool = 
    s = (List.rev (String.to_seq s) |> Seq.map (fun c -> Char.to_string c) |> String.concat "") in
  
  let find_palindrome_suffix (s : string) : int = 
    let len = String.length s in
    let rec loop i = 
      if i >= len then len
      else if is_palindrome (String.sub s i (len - i)) then i
      else loop (i + 1) in
    loop 0 in
  
  let pal_len = find_palindrome_suffix string in
  let prefix_len = String.length string - pal_len in
  let prefix = String.sub string 0 prefix_len in
  string ^ (String.rev prefix)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:58: Unbound value "Char.to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string = 
  let is_palindrome (s : string) : bool = 
    s = (List.rev (String.to_seq s) |> Seq.map (fun c -> Char.escaped c) |> String.concat "") in
  
  let find_palindrome_suffix (s : string) : int = 
    let len = String.length s in
    let rec loop i = 
      if i >= len then len
      else if is_palindrome (String.sub s i (len - i)) then i
      else loop (i + 1) in
    loop 0 in
  
  let pal_len = find_palindrome_suffix string in
  let prefix_len = String.length string - pal_len in
  let prefix = String.sub string 0 prefix_len in
  string ^ (String.rev prefix)

