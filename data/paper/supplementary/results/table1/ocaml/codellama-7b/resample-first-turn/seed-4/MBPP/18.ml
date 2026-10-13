let rec remove_dirty_chars (string : string) (second_string : string) : string = 
    match (string, second_string) with 
    | ("", second_string) | (char, "") -> char 
    | (string @ [first_char], second_string) when (List.mem first_char second_string) -> remove_dirty_chars (String.remove_char string first_char) second_string 
    | (string, second_string @ _) -> string 
        |> remove_dirty_chars second_string 
        |> (fun string -> String.remove_char (remove_dirty_chars string (String.suffix second_string 1)) (String.suffix first_char 1))
end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
