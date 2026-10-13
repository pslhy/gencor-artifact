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
    if String.length s = 0 then
        ""
    else if Char.is_letter (String.get s 0) then
        (Char.lowercase (String.get s 0) |> Char.uppercase) :: (solve (String.sub s 1 (-1)))
    else
        s[0] :: (solve (String.sub s 1 (-1)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "Char.is_letter" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    if String.length s = 0 then
        ""
    else if s.[0] >= 'a' && s.[0] <= 'z' then
        String.uppercase (String.make 1 s.[0]) ^ (solve (String.sub s 1 (-1)))
    else
        String.make 1 s.[0] ^ (solve (String.sub s 1 (-1)))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "String.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    if String.length s = 0 then
        ""
    else if s.[0] >= 'a' && s.[0] <= 'z' then
        String.make 1 (Char.uppercase s.[0]) ^ (solve (String.sub s 1 (-1)))
    else
        String.make 1 s.[0] ^ (solve (String.sub s 1 (-1)))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec solve (s : string) : string = 
    if String.length s = 0 then
        ""
    else if s.[0] >= 'a' && s.[0] <= 'z' then
        String.make 1 (Char.chr (Char.code s.[0] - 32)) ^ (solve (String.sub s 1 (-1)))
    else
        String.make 1 s.[0] ^ (solve (String.sub s 1 (-1)))

