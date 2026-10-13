
let rec anti_shuffle (s : string) : string = 
    let rec sort_chars (chars : char list) : char list =
        match chars with
        | [] -> []
        | [c] -> [c]
        | _ -> 
            let first = List.fold_left (fun acc c -> if c < acc then c else acc) (List.hd chars) chars in
            first :: sort_chars (List.filter (fun c -> c <> first) chars)
    in
    let words = String.split_on_char ' ' s in
    let sorted_words = List.map (fun word -> 
        let chars = List.of_seq (String.to_seq word) in
        String.of_seq (List.to_seq (sort_chars chars))
    ) words in
    String.concat " " sorted_words

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
