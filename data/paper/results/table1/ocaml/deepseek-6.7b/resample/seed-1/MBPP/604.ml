(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> begin
      let space_pos = String.index s ' ' in
      let first_word = String.sub s 0 space_pos in
      let rest = String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
      let reversed_rest = reverse_words rest in
      reversed_rest ^ " " ^ first_word
    end
  with
  | Not_found -> s

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> begin
      let space_pos = String.index s ' ' in
      let first_word = String.sub s 0 space_pos in
      let rest = String.sub s (space_pos + 1) (String.length s - space_pos - 1) in
      let reversed_rest = reverse_words rest in
      reversed_rest ^ " " ^ first_word
    end
  with
  | Not_found -> s

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> begin
      let space_pos = String.index s ' ' in
      let first_word = String.sub s 0 space_pos in
      let rest = String.sub s (space_pos + 1) ((String.length s) - space_pos - 1) in
      let reversed_rest = reverse_words rest in
      reversed_rest ^ " " ^ first_word
    end
  | exception Not_found -> s

