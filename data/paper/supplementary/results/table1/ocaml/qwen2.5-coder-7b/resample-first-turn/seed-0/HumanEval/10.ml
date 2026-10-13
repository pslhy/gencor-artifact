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
