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
    let reverse (s : string) : string = 
        (String.init (String.length s)
            (fun i -> (String.get s (String.length s - 1 - i)) s
    in
    let longest_palindrome (s : string) : string = 
        let rec aux (s : string) (r : string) : string =
            if s = r then s
            else aux (String.sub s 1 (String.length s - 1)) (String.sub r 0 (String.length r - 1))
        in
        aux s (reverse s)
    in
    let palindrome = longest_palindrome string in
    if string = reverse string then
        palindrome
    else
        palindrome ^ (reverse (String.sub string 0 (String.length string - String.length palindrome)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string =
    let reverse (s : string) : string = 
        (String.init (String.length s)
            (fun i -> (String.get s (String.length s - 1 - i))
    in
    let longest_palindrome (s : string) : string = 
        let rec aux (s : string) (r : string) : string =
            if s = r then s
            else aux (String.sub s 1 (String.length s - 1)) (String.sub r 0 (String.length r - 1))
        in
        aux s (reverse s)
    in
    let palindrome = longest_palindrome string in
    if string = reverse string then
        palindrome
    else
        palindrome ^ (reverse (String.sub string 0 (String.length string - String.length palindrome)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:5: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_palindrome (string : string) : string =
    let reverse (s : string) : string = 
        let rec aux (i : int) (acc : string) : string =
            if i < 0 then acc
            else aux (i - 1) (acc ^ String.sub s i 1)
        in
        aux (String.length s - 1) ""
    in
    let longest_palindrome (s : string) : string = 
        let rec aux (s : string) (r : string) : string =
            if s = r then s
            else aux (String.sub s 1 (String.length s - 1)) (String.sub r 0 (String.length r - 1))
        in
        aux s (reverse s)
    in
    let palindrome = longest_palindrome string in
    if string = reverse string then
        palindrome
    else
        palindrome

