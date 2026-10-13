(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
let rec is_bored (s : string) : int =
  match String.split_on_chars s ['.'; '?'; '!'] with
  | [] -> 0
  | h :: t -> if String.is_prefix ~prefix:"I" h then 1 else is_bored (String.concat_mapper t ~f:(fun s -> "; ") h)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match String.split_on_chars s with
  | [] -> 0
  | h :: t -> if String.is_prefix ~prefix:"I" h then 1 else is_bored (String.concat_mapper t ~f:(fun s -> "; ") h);;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match String.split_on_char '.' s with
  | [] -> 0
  | h :: t -> if String.is_prefix ~prefix:"I" h then 1 else is_bored (String.concat_mapper t ~f:(fun s -> "; ") h);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:18: Unbound value "String.is_prefix" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match String.split_on_char '.' s with
  | [] -> 0
  | h :: t -> if String.starts_with h "I" then 1 else is_bored (String.concat_mapper t ~f:(fun s -> "; ") h);;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:65: Unbound value "String.concat_mapper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_bored (s : string) : int =
  match String.split_on_char '.' s with
  | [] -> 0
  | h :: t -> if String.starts_with h "I" then 1 else is_bored (String.concat (t, "; ") h);;

