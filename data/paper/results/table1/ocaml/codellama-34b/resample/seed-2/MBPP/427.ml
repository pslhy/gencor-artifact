(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format. *)
let rec change_date_format (dt : string) : string =
    let d = List.nth (String.split_on_chars ["-"] dt) 0 in
    let m = List.nth (String.split_on_chars ["-"] dt) 1 in
    let y = List.nth (String.split_on_chars ["-"] dt) 2 in
    y ^ "-" ^ m ^ "-" ^ d

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
    let d = List.nth (String.split_on_chars ["-"] dt) 0 in
    let m = List.nth (String.split_on_chars ["-"] dt) 1 in
    let y = List.nth (String.split_on_chars ["-"] dt) 2 in
    y ^ "-" ^ m ^ "-" ^ d

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_date_format (dt : string) : string =
    let d = List.nth (String.split_on_char "-" dt) 0 in
    let m = List.nth (String.split_on_char "-" dt) 1 in
    let y = List.nth (String.split_on_char "-" dt) 2 in
    y ^ "-" ^ m ^ "-" ^ d

