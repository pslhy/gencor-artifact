
let rec anti_shuffle (s : string) : string =
  if String.length s <= 1 then
    s
  else
    let (left, right) = String.split_on_char ' ' s in
    if String.length left > 0 || String.length right > 0 then
      anti_shuffle (String.lowercase_ascii (String.concat "" (List.map (fun c -> c ^ " ") (String.to_seq left)))) ^ " " ^ anti_shuffle (String.lowercase_ascii (String.concat "" (List.map (fun c -> c ^ " ") (String.to_seq right))))
    else
      s

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
