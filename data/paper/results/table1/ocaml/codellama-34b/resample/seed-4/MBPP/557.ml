(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
let rec toggle_string (string : string) : string = 
    (* base case: if the string is empty, return an empty string *)
    if string = "" then
        ""
    (* recursive case: toggle the case of the first character and prepend it to the recursive result *)
    else
        let first_char, rest_of_string = string.[0], String.sub string 1 (String.length string - 1) in
        Char.escaped (if Char.is_uppercase first_char then Char.lowercase first_char else Char.uppercase first_char),
	toggle_string rest_of_string

