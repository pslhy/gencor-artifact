let rec make_palindrome (string : string) : string =
  if string = "" then
    ""
  else
    let prefix, suffix =
      let rec aux (i : int) : string * string =
        if i = 0 then
          ("", string)
        else if is_palindrome (string.[0..i]) then
          (string.[0..i], string.[0..i-1])
        else
          aux (i - 1)
      in
      aux (String.length string)
    in
    prefix ^ (String.map (fun _ -> 'a') (String.rev suffix))

and is_palindrome (string : string) : bool =
  let rec aux (i : int) : bool =
    i = 0 ||
    (string.[i] = string.[String.length string - i] &&
     aux (i - 1))
  in
  aux (String.length string / 2)


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
