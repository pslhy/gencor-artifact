let rec words_string (s : string) : string list = 
    let trim_spaces = String.trim in
    let split_on_char c s = String.split_on_char c s in
    let rec split_on_chars chars s =
        match chars with
        | [] -> [s]
        | c :: cs ->
            let parts = split_on_char c s in
            List.flatten (List.map (fun part -> split_on_chars cs part) parts)
    in
    split_on_chars [' '; ','] s
    |> List.map trim_spaces
    |> List.filter ((<>) "")


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
