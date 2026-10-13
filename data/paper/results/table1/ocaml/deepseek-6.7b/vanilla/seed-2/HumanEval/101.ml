let rec words_string (s : string) : string list =
  let len = String.length s in
  if len = 0 then
    []
  else
    let rec find_sep i =
      if i = len then
        i
      else if s.[i] = ',' || s.[i] = ' ' then
        i+1
      else
        find_sep (i+1)
    in
    let sep = find_sep 0 in
    let pre, post = String.sub s 0 sep, String.sub s sep (len-sep) in
    pre :: words_string post


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
