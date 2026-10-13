(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
let rec text_match_one (text : string) : bool =
  let pattern = Str.regexp "ab+" in (* create a regexp for pattern "ab+" *)
  try
    ignore (Str.search_forward pattern text 0);
    true
  with Not_found -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  let pattern = Regexp.regexp "ab+" in (* create a regexp for pattern "ab+" *)
  try
    ignore (Regexp.search_forward pattern text 0);
    true
  with Not_found -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Regexp" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  let pattern = Str.regexp "ab+" in (* create a regexp for pattern "ab+" *)
  try
    ignore (Str.search_forward pattern text 0);
    true
  with Not_found -> false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  let pattern = Str.regexp "ab+" in (* create a regexp for pattern "ab+" *)
  try
    ignore (Str.search_forward pattern text 0);
    true
  with Not_found -> false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  let pattern = Str.regexp "ab+" in (* create a regexp for pattern "ab+" *)
  try
    ignore (Str.search_forward pattern text 0);
    true
  with Not_found -> false

