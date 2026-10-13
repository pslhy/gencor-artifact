let rec words_string (s : string) : string list =
  let s = String.trim s in
  if s = "" then []
  else
    let word, rest =
      match String.split_on_char ',' s with
      | [word] -> List.hd_opt (String.split_on_char ' ' word) ~default:word, ""
      | word :: rest -> word, String.concat "," rest in
    word :: words_string rest


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
