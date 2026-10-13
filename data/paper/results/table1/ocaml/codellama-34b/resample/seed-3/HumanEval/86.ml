(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
let rec anti_shuffle (s : string) : string =
  if String.length s <= 1 then
    s
  else
    let (left, right) = String.split_at s 1 in
    let sorted_left = anti_shuffle left in
    let sorted_right = anti_shuffle right in
    sorted_left ^ sorted_right.[0] ^ sorted_right.[1...]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:54: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  if String.length s <= 1 then
    s
  else
    let (left, right) = String.split_at s 1 in
    let sorted_left = anti_shuffle left in
    let sorted_right = anti_shuffle right in
    sorted_left ^ sorted_right

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  if String.length s <= 1 then
    s
  else
    let (left, right) = String.split (s, 1) in
    let sorted_left = anti_shuffle left in
    let sorted_right = anti_shuffle right in
    sorted_left ^ sorted_right

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "String.split" *)
(*     Hint: Did you mean "blit"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec anti_shuffle (s : string) : string =
  if String.length s <= 1 then
    s
  else
    let (left, right) = String.blit (s, 1) in
    let sorted_left = anti_shuffle left in
    let sorted_right = anti_shuffle right in
    sorted_left ^ sorted_right

