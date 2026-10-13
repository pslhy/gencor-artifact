(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
let rec text_match_zero_one (text : string) : bool = 
  let open_rex = Re.Rx "\\ab+" in
  Re.(exec open_rex text)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound module "Re" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool = 
  let open Re = Re2 in
  Re2.(match_ (Re2.create "\\ab+") text) > 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool = 
  let open Re2 = Re2 in
  Re2.(match_ (Re2.create "\\ab+") text) >= 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool = 
  let open Re = Re2 in
  Re2.(match_ (Re2.create "\\ab+") text) > 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:15: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_zero_one (text : string) : bool = 
  let open Re2 = Re2 in
  Re2.(match_all (Re2.create "\\ab+") text) <> []

