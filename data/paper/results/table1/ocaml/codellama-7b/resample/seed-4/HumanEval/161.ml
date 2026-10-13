(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a string s. *)
(*     if s[i] is a letter, reverse its case from lower to upper or vise versa, *)
(*     otherwise keep it as it is. *)
(*     If the string contains no letters, reverse the string. *)
(*     The function should return the resulted string. *)
(*     Examples *)
(*     >>> solve "1234" *)
(*     "4321" *)
(*     >>> solve "ab" *)
(*     "AB" *)
(*     >>> solve "#a@C" *)
(*     "#A@c" *)
let rec solve (s : string) : string = 
    let should_reverse =
        s.[0] |> Char.isLower
        || 
        s.[0] |> Char.isUpper
        && 
        s.[1] |> Char.isLower
        || 
        s.[1] |> Char.isUpper
    in
    let should_reverse_case s =
        s.[0] |> Char.shift_numeric_value 32
        |> Char.unsafe_chr
        |> string_of_char
    in
    match s with
    | "" -> ""
    | s -> 
        if should_reverse then
            should_reverse_case s
        else
            s
~~~

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    let len = String.length s 
    in
    if len = 0
    then ""
    else if s.[0] |> Char.is_alnum
    then 
        let rest = solve <(s.[1 .. (len - 1)])
        in
        rest.[0] |> Char.uppercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)] 
    else  
        let rest = solve <(s.[1 .. (len - 1)])
        in
        rest.[0] |> Char.lowercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)] 
# 1 "#"

# 2 ""[0-9]

# 3 ""[a-zA-Z]

# 4 ""[^a-zA-Z0-9#]"

# 5 "()" (solve [])

# 6 "Rightarrow" (solve "0")

# 7 "=>" (solve "1")

# 8 "--" (solve "11")

# 9 ":" (solve "111")

# 10 Conditional expression has type unit, a non-scalar type

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:33: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    let len = String.length s 
    in
    if len = 0
    then ""
    else if s.[0] |> Char.is_alnum
    then 
        let rest = solve <(s.[1 .. (len - 1)])
        in
        rest.[0] |> Char.uppercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)] 
    else  
        let rest = solve <(s.[1 .. (len - 1)])
        in
        rest.[0] |> Char.lowercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:33: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    let len = String.length s 
    in
    if len = 0
    then ""
    else if s.[0] |> Char.is_alnum 
    then 
        let rest = solve <(s.[1 .. (len - 1)]) 
        in
        rest.[0] |> Char.uppercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)]
    else 
        let rest = solve <(s.[1 .. (len - 1)]) 
        in
        rest.[0] |> Char.lowercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:33: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    let len = String.length s 
    in
    if len = 0 
    then ""
    else if s.[0] |> Char.is_alnum
    then 
        let rest = solve s.[1 .. (len - 1)] 
        in
        rest.[0] |> Char.uppercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)] 
    else 
        let rest = solve s.[1 .. (len - 1)] 
        in
        rest.[0] |> Char.lowercase_ascii |> string_of_char |> Printf.sprintf "%s%s" rest.[1 .. (String.length rest - 1)]

