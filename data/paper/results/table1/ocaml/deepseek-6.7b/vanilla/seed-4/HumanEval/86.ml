let rec anti_shuffle (s : string) : string =
  let len = String.length s in
  if len = 0 then s
  else match s.[0] with
  | ' ' -> s.[0] ^ anti_shuffle (String.sub s 1 (len - 1))
  | _ -> List.fold_left (fun acc c -> if c < s.[0] then c ^ acc else acc ^ String.make 1 c) "" (List.map Char.escaped (List.sort compare (String.fold_left (fun acc c -> if c = ' ' then acc else c :: acc) [] s))) ^ anti_shuffle (String.sub s 1 (len - 1))
;;


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
