let rec text_match_two_three (text : string) : bool =
    match text with
    | "" -> false
    | "a" -> false
    | "ab" -> false
    | "abc" -> true
    | _ :: rest -> text_match_two_three (String.sub rest 1 (String.length rest - 1))


(* Test cases *)
print_endline (string_of_bool (text_match_two_three "aa")) ;; (* "aa" is False *)
print_endline (string_of_bool (text_match_two_three "abb")) ;; (* "abb" is True *)
print_endline (string_of_bool (text_match_two_three "abbb")) ;; (* "abbb" is True *)
print_endline (string_of_bool (text_match_two_three "abbbc")) ;; (* "abbbc" is False *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
