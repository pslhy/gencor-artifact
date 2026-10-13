
let rec anti_shuffle (s : string) : string =
  match s with
  | "" -> ""
  | _ ->
      let first_space = String.index_from s 0 ' ' in
      let before_word, after_word = String.sub s 0 first_space, String.sub s (first_space + 1) (String.length s - first_space - 1) in
      let ordered_word = 
        let char_list = List.sort (fun c1 c2 -> Char.code c1 - Char.code c2) (String.to_seq before_word) in
        String.of_seq (List.to_seq char_list)
      in
      ordered_word ^ " " ^ anti_shuffle after_word

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
