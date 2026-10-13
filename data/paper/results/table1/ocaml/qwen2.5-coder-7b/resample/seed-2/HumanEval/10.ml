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
    let length = String.length in
    let is_palindrome s =
        String.equal s (String.rev s)
    in
    let rec find_longest_palindrome_suffix index =
        if index = -1 || is_palindrome (String.sub string 0 (index + 1)) then
            index
        else
            find_longest_palindrome_suffix (index - 1)
    in
    let palindromic_index = find_longest_palindrome_suffix (length - 1) in
    if palindromic_index = length - 1 then
        string
    else
        string ^ (String.sub string 0 (palindromic_index + 1) |> String.rev)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:25: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string = 
    let length = String.length in
    let is_palindrome s =
        let rec compare_chars i j =
            if i >= j then true
            else if s.[i] = s.[j] then compare_chars (i + 1) (j - 1)
            else false
        in
        compare_chars 0 (length s - 1)
    in
    let rec find_longest_palindrome_suffix index =
        if index = -1 || is_palindrome (String.sub string 0 (index + 1)) then
            index
        else
            find_longest_palindrome_suffix (index - 1)
    in
    let palindromic_index = find_longest_palindrome_suffix (length string - 1) in
    if palindromic_index = length string - 1 then
        string
    else
        string ^ (String.sub string 0 (palindromic_index + 1) |> String.rev)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:66: Unbound value "String.rev" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string = 
    let length = String.length in
    let is_palindrome s =
        let rec compare_chars i j =
            if i >= j then true
            else if s.[i] = s.[j] then compare_chars (i + 1) (j - 1)
            else false
        in
        compare_chars 0 (length s - 1)
    in
    let rec find_longest_palindrome_suffix index =
        if index = -1 || is_palindrome (String.sub string 0 (index + 1)) then
            index
        else
            find_longest_palindrome_suffix (index - 1)
    in
    let palindromic_index = find_longest_palindrome_suffix (length string - 1) in
    if palindromic_index = length string - 1 then
        string
    else
        let prefix = String.sub string 0 (palindromic_index + 1) in
        let reversed_prefix = String.make (length prefix) ' ' in
        for i = 0 to length prefix - 1 do
            reversed_prefix.[i] <- prefix.[length prefix - 1 - i]
        done;
        string ^ reversed_prefix

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:13: Syntax error: strings are immutable, there is no assignment syntax for them. *)
(*     Hint: Mutable sequences of bytes are available in the Bytes module. *)
(*     Hint: Did you mean to use "Bytes.set"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string = 
    let length = String.length in
    let is_palindrome s =
        let rec compare_chars i j =
            if i >= j then true
            else if s.[i] = s.[j] then compare_chars (i + 1) (j - 1)
            else false
        in
        compare_chars 0 (length s - 1)
    in
    let rec find_longest_palindrome_suffix index =
        if index = -1 || is_palindrome (String.sub string 0 (index + 1)) then
            index
        else
            find_longest_palindrome_suffix (index - 1)
    in
    let palindromic_index = find_longest_palindrome_suffix (length string - 1) in
    if palindromic_index = length string - 1 then
        string
    else
        let prefix = String.sub string 0 (palindromic_index + 1) in
        let reversed_prefix = Bytes.create (length prefix) in
        for i = 0 to length prefix - 1 do
            Bytes.set reversed_prefix i prefix.[length prefix - 1 - i]
        done;
        string ^ (Bytes.to_string reversed_prefix)

