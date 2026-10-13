let rec words_string (s : string) : string list = 
  let split_on sep s = 
    let rec aux acc = function
      | "" -> List.rev acc
      | _ when String.contains sep (String.sub s 0 1) -> 
          aux [] (String.sub s 1 (String.length s - 1))
      | _ -> 
          let i = String.index_from s 0 sep in
          let word = String.sub s 0 i in
          aux (word :: acc) (String.sub s (i + 1) (String.length s - i - 1)) 
    in aux [] s 
  in split_on ',' (split_on ' ' s)

(* Test cases *)
let () =
  assert (words_string "Hi, my name is John" = ["Hi"; "my"; "name"; "is"; "John"]);
  assert (words_string "One, two, three, four, five, six" = ["One"; "two"; "three"; "four"; "five"; "six"])


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
