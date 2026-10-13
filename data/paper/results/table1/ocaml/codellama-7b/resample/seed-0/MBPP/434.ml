(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) || text_match_one (text.[2..])
  | "a" :: "b" :: rest -> text_match_one ("ab" :: rest)
  | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) || text_match_one (text.[2..])
  | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) && text_match_one (text.[2..])
  | _ -> false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) && text_match_one (text.[2..])
  | _ -> false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_one (text : string) : bool =
  match text with
  | "" -> false
  | "a" -> true
  | "b" -> text_match_one (text.[1..])
  | "ab" -> text_match_one (text.[1..]) && text_match_one (text.[2..])
  | _ -> false

