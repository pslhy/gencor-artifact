let rec is_bored (s : string) : int = 
    let trim_spaces = String.trim in
    let split_sentences = String.split_on_char '.' in
    let count_boredom = List.filter (fun x -> 
        trim_spaces x |> String.starts_with ~prefix:"I ") in
    List.length (count_boredom (trim_spaces s |> split_sentences))

let () =
    Printf.printf "%d\n" (is_bored "Hello world") ;     (* Output: 0 *)
    Printf.printf "%d\n" (is_bored "The sky is blue. The sun is shining. I love this weather") (* Output: 1 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
