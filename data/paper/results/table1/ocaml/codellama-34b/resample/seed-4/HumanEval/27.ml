(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
let rec flip_case (string : string) : string = 
    (* base case: empty string with no characters to flip *)
    if String.length string = 0 then
        ""
    else
        (* recursive case: flip the first character and flip the rest of the string *)
        let first_char, rest_of_string = string.[0], String.sub string 1 (String.length string - 1) in
        Char.uppercase_ascii first_char :: String.lowercase_ascii rest_of_string

