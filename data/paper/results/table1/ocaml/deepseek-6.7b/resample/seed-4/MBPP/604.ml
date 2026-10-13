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
  | s -> match Str.split (Str.regexp " ") s with
	 | [] -> ""
	 | hd :: tl -> (rev_string hd) ^ " " ^ (reverse_words (String.concat " " tl))

and rev_string (s : string) : string =
  let len = String.length s in
  if len <= 1 then s
  else String.sub s len -1 ^ String.sub s 0 1 ^ rev_string (String.sub s 1 (len - 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_words (s : string) : string =
  match s with
  | "" -> ""
  | s -> match String.split_on_char ' ' s with
	 | [] -> ""
	 | hd :: tl -> (rev_string hd) ^ " " ^ (reverse_words (String.concat " " tl))

and rev_string (s : string) : string =
  let len = String.length s in
  if len <= 1 then s
  else String.sub s len ~pos:(len - 1) ^ String.sub s ~pos:0 ~len:1 ^ rev_string (String.sub s ~pos:1 ~len:(len - 2))

