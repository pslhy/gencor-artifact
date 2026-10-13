let rec text_match_one (text : string) : bool = 
    (* base case: end of string reached and no more 'b's found *)
    if String.length text = 0 then (* Text has been completely matched *)
        false
    (* else case: try to match 'a' followed by one or more 'b's *)
    else if text.[0] = 'a' && text_match_two (String.sub text 1 (String.length text - 1)) then (* 'a' and at least one 'b' match *)
        true
    (* else case: try to match the entire string by trying all possible combinations of 'a' and 'b' *)
    else
        text_match_two text

and text_match_two (text : string) : bool =
    (* base case: end of string reached and no more 'b's found *)
    if String.length text = 0 then (* Text has been completely matched *)
        false
    (* else case: try to match 'b' followed by one or more 'a's *)
    else if text.[0] = 'b' && text_match_one (String.sub text 1 (String.length text - 1)) then (* 'b' and at least one 'a' match *)
        true
    (* else case: try to match the entire string by trying all possible combinations of 'a' and 'b' *)
    else
        text_match_one text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
