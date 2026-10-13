let rec text_match_one (text : string) : bool = 
    (*
     * This function matches a string that has an a followed by one or more b's.
     * :param text: the string to match
     * :return: true if the string matches, false otherwise
     *)
    let rec loop (text : string) : bool = 
        match text with
        | "ab" -> true
        | "a" :: s -> false
        | _ :: _ -> loop s
        | [] -> false
    in
    let rec loop2 (text : string) : bool = 
        match text with
        | "ab" -> true
        | "b" :: s -> loop2 s
        | _ :: _ -> loop s
        | [] -> false
    in
    loop text || loop2 text

let matches_a_followed_by_a_b (text : string) : bool = 
    text_match_one text || text_match_one (String.substring(text, 1) 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
