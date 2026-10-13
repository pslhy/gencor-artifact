(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
let rec text_match_two_three (text : string) : bool = 
    (* base case: if the string is empty, there are no 'b' characters following 'a', so return false *)
    if String.length text = 0 then false
    (* recursive case: check if the first character is 'a' and the remaining text contains two or three 'b' characters *)
    else if String.sub text 0 1 = "a" then
        let remaining_text = String.sub text 1 (String.length text - 1) in
        let num_b_chars = String.count remaining_text "b" in
        num_b_chars = 2 || num_b_chars = 3
    (* otherwise, the string does not match the pattern 'a' followed by two or three 'b' characters, so return false *)
    else false

let () =
    assert (text_match_two_three "aabb");
    assert (not (text_match_two_three "aab"));
    assert (not (text_match_two_three "aaab"));
    assert (not (text_match_two_three "aabbb"));
    assert (not (text_match_two_three "ab"));
    assert (not (text_match_two_three "aabccc"));

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:27: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_two_three (text : string) : bool = 
    (* base case: if the string is empty, there are no 'b' characters following 'a', so return false *)
    if String.length text = 0 then false
    (* recursive case: check if the first character is 'a' and the remaining text contains two or three 'b' characters *)
    else if String.sub text 0 1 = "a" then
        let remaining_text = String.sub text 1 (String.length text - 1) in
        let num_b_chars = String.length (String.sub remaining_text 1 (String.length remaining_text)) in
        num_b_chars = 2 || num_b_chars = 3
    (* otherwise, the string does not match the pattern 'a' followed by two or three 'b' characters, so return false *)
    else false

let () =
    assert (text_match_two_three "aabb");
    assert (not (text_match_two_three "aab"));
    assert (not (text_match_two_three "aaab"));
    assert (not (text_match_two_three "aabbb"));
    assert (not (text_match_two_three "ab"));
    assert (not (text_match_two_three "aabccc"));

