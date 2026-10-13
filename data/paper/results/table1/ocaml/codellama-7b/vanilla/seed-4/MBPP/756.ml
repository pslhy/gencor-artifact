let rec text_match_zero_one (text : string) : bool = 
    (* base case: if the string is empty, there is no match *)
    if text = "" then false 
    (* check if the first character of the string is 'a' *)
    else if String.equal text.[0] "a" then 
        (* check if the second character of the string is 'b' *)
        if String.equal text.[1] "b" then 
            (* recursively call text_match_zero_one with the tail of the string *)
            text_match_zero_one (String.sub text 2 (String.length text - 1))
        else 
            false
    else 
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
