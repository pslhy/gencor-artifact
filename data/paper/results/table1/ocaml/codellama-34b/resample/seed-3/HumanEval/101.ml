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
  if String.length s = 0 then
    []
  else if s.[0] = ' ' || s.[0] = ',' then
    words_string (String.sub s 1 (String.length s - 1))
  else
    let rec split_words (s : string) : string list =
      if String.length s = 0 then
        []
      else if s.[0] = ' ' || s.[0] = ',' then
        []
      else
        String.split_on_char ' ' s
    in
    List.map (fun (word : string) -> word.[0..(String.length word - 2)]) (split_words s) @
    if s.[(String.length s - 1)] = ',' || s.[(String.length s - 1)] = ' ' then
      [s.[(String.length s - 1)]]
    else
      []

