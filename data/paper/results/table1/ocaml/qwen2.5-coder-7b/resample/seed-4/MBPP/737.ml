(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool = 
    let regex = Str.regexp "^[aeiouAEIOU]" in
    if Str.string_match regex string 0 then true else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool = 
    let regex = Pcre.regexp "^[aeiouAEIOU]" in
    if Pcre.pmatch regex string then true else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Pcre" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool = 
    let regex = Re.compile (Re.pstr "^[aeiouAEIOU]") in
    if Re.exec regex string then true else false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Re" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool = 
    let open Re in
    let regex = pcre "^[aeiouAEIOU]" in
    if pmatch regex string then true else false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:14: Unbound module "Re" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool = 
    let open Re in
    let regex = compile (pstr "^[aeiouAEIOU]") in
    if exec regex string then true else false

