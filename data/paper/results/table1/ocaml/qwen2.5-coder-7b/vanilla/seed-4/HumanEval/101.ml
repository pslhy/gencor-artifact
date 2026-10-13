let rec words_string (s : string) : string list = 
  let rec split acc s = 
    match String.index_opt s ',' with
    | Some i -> split (acc ^ String.sub s 0 i :: acc) (String.sub s (i + 1) ((String.length s) - (i + 1)))
    | None -> 
      match String.index_opt s ' ' with
      | Some i -> split (acc ^ String.sub s 0 i :: acc) (String.sub s (i + 1) ((String.length s) - (i + 1)))
      | None -> List.rev (acc ^ s :: acc)
  in 
  split "" s


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
