(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You will be given a string of words separated by commas or spaces. Your task is *)
(*     to split the string into words and return a list of the words. *)
(*     For example: *)
(*     >>> words_string "Hi, my name is John" *)
(*     ["Hi"; "my"; "name"; "is"; "John"] *)
(*     >>> words_string "One, two, three, four, five, six" *)
(*     ["One"; "two"; "three"; "four"; "five"; "six"] *)
let rec words_string (s : string) : string list = 
  let split_on_chars chars s = 
    String.split_on_chars chars s 
  in
  let words = split_on_chars [' '; ','] s in 
  List.filter (fun s -> s <> "") words

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Unbound value "String.split_on_chars" *)
(*     Hint: Did you mean "split_on_char"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec words_string (s : string) : string list = 
  let split_on_char c s = 
    String.split_on_char c s 
  in
  let words = split_on_char ' ' s |> split_on_char ',' in 
  List.filter ((<>) "") words

