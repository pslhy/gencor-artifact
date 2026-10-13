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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse words seperated by spaces in a given string. *)
