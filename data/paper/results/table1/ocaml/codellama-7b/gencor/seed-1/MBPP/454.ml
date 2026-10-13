
let rec text_match_wordz (text : string) : bool =
    let contains_z =
        let is_z c = c = 'z' in
        List.exists is_z (String.to_seq text)
    in
    contains_z

let test_text = "hello z";;
let result = text_match_wordz test_text;;
print_endline (string_of_bool result);;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
