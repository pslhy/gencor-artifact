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
    let len = String.length s in
    let rec helper i acc =
        if i < 0 then
            acc
        else
            let c = String.get s i in
            if Char.code c > 90 && Char.code c <= 122 then
                helper (i - 1) (Char.chr (Char.code c - 32) :: acc)
            else if Char.code c > 64 && Char.code c <= 90 then
                helper (i - 1) (Char.chr (Char.code c + 32) :: acc)
            else if c = ' ' then
                helper (i - 1) (c :: acc)
            else if Char.code c >= 48 && Char.code c <= 57 then
                helper (i - 1) (c :: acc)
            else
                helper (i - 1) ('*' :: acc) (* non-letter character *)
    in String.of_char_list (helper (len - 1) [])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:8: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    let len = String.length s in
    let rec helper i acc =
        if i < 0 then
            acc
        else
            let c = String.get s i in
            if Char.code c > 90 && Char.code c <= 122 then
                helper (i - 1) (Char.chr (Char.code c - 32) :: acc)
            else if Char.code c > 64 && Char.code c <= 90 then
                helper (i - 1) (Char.chr (Char.code c + 32) :: acc)
            else if c = ' ' then
                helper (i - 1) (c :: acc)
            else if Char.code c >= 48 && Char.code c <= 57 then
                helper (i - 1) (c :: acc)
            else
                helper (i - 1) ('*' :: acc)
    in String.uppercase (helper (len - 1) [])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:8: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    let len = String.length s in
    let rec helper i acc =
        if i < 0 then
            acc
        else
            let c = String.get s i in
            if Char.code c > 90 && Char.code c <= 122 then
                helper (i - 1) (Char.chr (Char.code c - 32) :: acc)
            else if Char.code c > 64 && Char.code c <= 90 then
                helper (i - 1) (Char.chr (Char.code c + 32) :: acc)
            else if c = ' ' then
                helper (i - 1) (c :: acc)
            else if Char.code c >= 48 && Char.code c <= 57 then
                helper (i - 1) (c :: acc)
            else
                helper (i - 1) ('*' :: acc)
    in String.of_char_list (List.rev (helper (len - 1) []))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:8: Unbound value "String.of_char_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string =
    let len = String.length s in
    let rec helper i acc =
        if i < 0 then
            acc
        else
            let c = String.get s i in
            let c = if Char.code c > 90 && Char.code c <= 122 then Char.chr (Char.code c - 32)
                    else if Char.code c > 64 && Char.code c <= 90 then Char.chr (Char.code c + 32)
                    else c
            in helper (i - 1) (c :: acc)
    in if len = 0 then s else List.fold_left (fun acc c -> acc ^ String.make 1 c) "" (helper (len - 1) [])

