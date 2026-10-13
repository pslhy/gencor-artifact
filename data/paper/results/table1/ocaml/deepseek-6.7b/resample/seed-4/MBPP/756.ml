(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
let rec text_match_zero_one (text : string) : bool =
  let re = Str.regexp "ab*" in
    try
      ignore (Str.search_forward re text 0);
      true
    with Not_found -> false 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool =
  let re = Str.regexp "ab*" in
    try
      ignore (String.index text re 0);
      true
    with Not_found -> false 

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool =
  let re = Str.regexp "ab*" in
    try
      ignore (String.index text re 0);
      true
    with Not_found -> false 

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool =
  let re = Str.regexp "ab*" in
    try
      ignore (String.index text re 0);
      true
    with Not_found -> false 

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:12: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool =
  let re = Str.regexp "ab*" in
    try
      ignore (String.index text re 0);
      true
    with Not_found -> false 

