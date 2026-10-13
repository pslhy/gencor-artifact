(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.lowercase str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.lowercase str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.uncapitalize str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Unbound value "String.uncapitalize" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.capitalize_ascii str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:15: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.capitalize_ascii str1 in
    let rec helper i w acc =
      if i >= String.length str2 then List.rev acc
      else if Char.is_uppercase_ascii str2.[i] then
        let w' = String.sub str2 i (String.index str2 (i+1) - i) in
        helper (i + 1) w' (w' :: " " :: acc)
      else helper (i + 1) w (str2.[i] :: acc)
    in
    helper 0 [] |> String.concat ""

