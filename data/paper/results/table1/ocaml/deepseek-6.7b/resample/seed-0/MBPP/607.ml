(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let re = Str.regexp pattern in
    let loc = Str.search_forward re text 0 in
    let end_loc = loc + String.length pattern - 1 in
    (String.sub text loc (end_loc - loc + 1), loc, end_loc);;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:14: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let re = Str.regexp pattern in
    let loc = Str.string_match re text 0 in
    let end_loc = String.length pattern + loc in
    (String.sub text loc (end_loc - loc), loc, end_loc);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:14: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let re = Str.regexp pattern in
    try
        let loc = Str.search_forward re text 0 in
        let len = String.length pattern in
        (String.sub text loc len, loc, loc + len - 1)
    with Not_found -> ("", -1, -1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:14: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let regexp = Pcre.regexp pattern in
    try
        let subject = Pcre.substring text regexp 0 in
        let start = Pcre.index text regexp in
        let end_ = start + String.length subject - 1 in
        (subject, start, end_)
    with Not_found -> ("", -1, -1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound module "Pcre" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let regexp = Str.regexp pattern in
    try
        let start_pos = Str.search_forward regexp text 0 in
        let end_pos = start_pos + (String.length pattern) - 1 in
        (String.sub text start_pos (end_pos - start_pos + 1), start_pos, end_pos)
    with Not_found -> ("", -1, -1)

