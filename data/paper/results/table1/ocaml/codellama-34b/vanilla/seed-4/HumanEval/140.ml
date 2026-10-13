let rec fix_spaces (text : string) : string = 
    let text_length = String.length text in
    let rec loop current_index spaces_found =
        if current_index = text_length
        then ""
        else 
            let current_char = text.[current_index] in
            if current_char = ' '
            then 
                if spaces_found >= 2 
                then loop (current_index + 1) 0
                else loop (current_index + 1) (spaces_found + 1)
            else current_char :: loop (current_index + 1) spaces_found in
    let rec construct_string string_list =
        if List.length string_list = 0
        then ""
        else 
            let first_char = List.hd string_list in
            if first_char = ' '
            then 
                let rec loop string_list =
                    if List.length string_list = 1
                    then ""
                    else 
                        let current_char = List.hd string_list in
                        if current_char = ' '
                        then loop (List.tl string_list)
                        else current_char :: loop (List.tl string_list) in
                loop string_list ^ " -" ^ construct_string (List.tl string_list)
            else first_char :: construct_string (List.tl string_list) in
    construct_string (loop 0 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string text, replace all spaces in it with underscores, *)
(*     and if a string has more than 2 consecutive spaces, *)
(*     then replace all consecutive spaces with - *)
(*     >>> fix_spaces " Example" *)
(*     "Example" *)
(*     >>> fix_spaces " Example 1" *)
(*     "Example_1" *)
(*     >>> fix_spaces " Example 2" *)
(*     "_Example_2" *)
(*     >>> fix_spaces " Example 3" *)
(*     "_Example-3" *)
