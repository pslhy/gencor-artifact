(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function encrypt that takes a string as an argument and *)
(*     returns a string encrypted with the alphabet being rotated. *)
(*     The alphabet should be rotated in a manner such that the letters *)
(*     shift down by two multiplied to two places. *)
(*     For example: *)
(*     >>> encrypt "hi" *)
(*     "lm" *)
(*     >>> encrypt "asdfghjkl" *)
(*     "ewhjklnop" *)
(*     >>> encrypt "gf" *)
(*     "kj" *)
(*     >>> encrypt "et" *)
(*     "ix" *)
let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let code = int_of_char s.[0] in
        let new_code = (code + 2) * 2 in
        let new_char = char_of_int new_code in
        new_char :: encrypt s.[1..]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:35: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let code = int_of_char s.[0] in
        let new_code = (code + 2) * 2 in
        let new_char = char_of_int new_code in
        new_char :: encrypt s.[1..]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:35: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let new_s = List.map (fun c -> if c > 96 then c + 2 else c) s.[0..4] in
        new_s ^ "somesalt" ^ (encrypt s.[5..]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:75: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let new_s = List.map (fun c -> if c > 96 then c + 2 else c) s.[0..4] in
        new_s ^ "somesalt" ^ (encrypt s.[5..] } in
        new_s

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:75: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encrypt (s : string) : string =
    if s = "" then ""
    else
        let new_s = List.map (fun c -> if c > 96 then c + 2 else c) s.[0..4] in
        new_s @ (encrypt s.[5..] } in
        new_s

