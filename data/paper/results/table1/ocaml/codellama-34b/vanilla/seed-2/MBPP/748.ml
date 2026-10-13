let rec capital_words_spaces (str1 : string) : string =
    match str1 with
    | "" -> ""
    | str1 when str1.[0].is_uppercase || str1.[0].is_lowercase ->
        let (a, b) = capital_words_spaces (str1.[1..]) in
        (str1.[0] ^ " " ^ a, b)
    | str1 ->
        let (a, b) = capital_words_spaces (str1.[1..]) in
        (a, str1.[0] ^ " " ^ b)
;;

assert (capital_words_spaces "HelloWorld" = "Hello World");;
assert (capital_words_spaces "HELLOWorld" = "HELLO World");;
assert (capital_words_spaces "HelLOWorld" = "Hel LO World");;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
