
let rec make_palindrome (string : string) : string = 
  let is_palindrome (s : string) : bool = 
    s = (String.to_seq s |> Seq.iter (fun c -> print_char c) |> String.init (String.length s) (fun _ -> input_char stdin)) in
  let rec find_longest_palindrome_suffix (s : string) : int =
    let n = String.length s in
    let rec loop i =
      if i >= n / 2 then i + 1 else if s.[i] = s.[n - i - 1] then loop (i + 1) else i in
    loop 0 in
  let longest = find_longest_palindrome_suffix string in
  let prefix = String.sub string 0 (String.length string - longest) in
  string ^ (String.concat "" (List.rev (String.split_on_char (Char.chr 0) prefix)))


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
