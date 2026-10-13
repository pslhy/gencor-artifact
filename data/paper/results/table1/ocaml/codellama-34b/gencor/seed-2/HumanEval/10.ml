
let rec make_palindrome (string : string) : string =
    let reverse (s : string) : string = 
        (String.init (String.length s)
            (fun i -> (String.get s (String.length s - 1 - i)) s
    in_channel_length s) in_channel_length s)
    in
    let is_palindrome (s : string) : bool =
        s = reverse s
    in
    let rec find_longest_palindromic_suffix (s : string) : int =
        if is_palindrome s then
            String.length s
        else
            find_longest_palindromic_suffix (String.sub s 0 (String.length s - 1))
    in
    let suffix_length = find_longest_palindromic_suffix string in
    let prefix_length = String.length string - suffix_length in
    let prefix = String.sub string 0 prefix_length in
    let suffix = String.sub string prefix_length suffix_length in
    prefix ^ (reverse suffix)
;;

make_palindrome "";;
"";;

make_palindrome "cat";;
"catac";;

make_palindrome "cata";;
"catac";;

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
