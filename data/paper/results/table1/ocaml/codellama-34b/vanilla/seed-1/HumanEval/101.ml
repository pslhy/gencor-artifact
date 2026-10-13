let rec words_string (s : string) : string list =
    let is_word_separator (c : char) : bool =
        c = ' ' || c = ',' in
    let rec aux (i : int) (acc : string list) : string list =
        if i = String.length s then
            List.rev acc
        else if is_word_separator s.[i] then
            aux (i + 1) acc
        else
            let w, j = take_word (i + 1) s in
            aux j (w :: acc) in
    aux 0 []

and take_word (i : int) (s : string) : string * int =
    let rec aux (j : int) (acc : string) : string * int =
        if j = String.length s || is_word_separator s.[j] then
            acc, j
        else
            aux (j + 1) (acc ^ String.make 1 s.[j]) in
    aux i ""


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
