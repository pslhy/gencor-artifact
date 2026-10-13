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
    let reverse (str : string) : string =
        let rec reverse_aux (str : string) (acc : string) : string =
            if str = "" then
                acc
            else
                reverse_aux (String.sub str 1 (String.length str - 1)) (str.[0] :: acc)
        in
        reverse_aux str []
    in
    let longest_palindromic_suffix (str : string) : string =
        let rec longest_palindromic_suffix_aux (str : string) (i : int) : string =
            if i = String.length str then
                ""
            else if str.[i] = str.[String.length str - 1 - i] then
                longest_palindromic_suffix_aux str (i + 1)
            else
                ""
        in
        longest_palindromic_suffix_aux str 0
    in
    let longest_palindromic_suffix_str = longest_palindromic_suffix string in
    let prefix_str = String.sub string 0 (String.length string - String.length longest_palindromic_suffix_str) in
    let reverse_prefix_str = reverse prefix_str in
    string ^ reverse_prefix_str ^ longest_palindromic_suffix_str

