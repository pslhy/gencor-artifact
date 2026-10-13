let rec check_str (string : string) : bool =
  let len = String.length string in
  if len = 0 then false
  else match string.[0] with
  | 'a' | 'e' | 'i' | 'o' | 'u'| 'A' | 'E' | 'I' | 'O' | 'U' -> true
  | _ -> check_str (String.sub string 1 (len - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
