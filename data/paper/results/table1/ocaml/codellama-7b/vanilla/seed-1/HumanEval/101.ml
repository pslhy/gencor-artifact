let rec words_string (s : string) : string list =
  let is_word_char c =
    let c = Char.lowercase c in
    c >= 'a' && c <= 'z' || c >= '0' && c <= '9' || c = '-'
  in
  let rec aux (i : int) (w : string) : string list =
    if i >= String.length s then
      []
    else
      let c = s.[i] in
      if c = ' ' || c = ',' || c = '.' then
        aux (i + 1) ""
      else
        match aux (i + 1) (String.make 1 c ^ w) with
        | w :: ws -> w :: w :: ws
        | [] -> [w]
  in
  aux 0 ""


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
