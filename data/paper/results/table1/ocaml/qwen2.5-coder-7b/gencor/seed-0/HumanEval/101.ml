
let rec words_string (s : string) : string list = 
  let split_on_chars chars s = 
    String.split_on_char (List.hd chars) (String.sub s 1 (String.length s - 1))
  in
  let split_s = split_on_chars [','; ' '] s in
  match split_s with
  | [] -> []
  | word :: rest -> word :: (words_string (String.trim rest))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You will be given a string of words separated by commas or spaces. Your task is *)
(*     to split the string into words and return a list of the words. *)
(*     For example: *)
(*     >>> words_string "Hi, my name is John" *)
(*     ["Hi"; "my"; "name"; "is"; "John"] *)
(*     >>> words_string "One, two, three, four, five, six" *)
(*     ["One"; "two"; "three"; "four"; "five"; "six"] *)
