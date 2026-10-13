(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
let rec remove_parenthesis (items : string list) : string = 
    (* base case: if the list is empty, return an empty string *)
    if items = [] then
        ""
    (* recursive case: if the list is not empty, remove the first item *)
    else
        let head = List.hd items in
        let tail = List.tl items in
        (* if the head is an opening parenthesis, remove everything up to the corresponding closing parenthesis *)
        if head = "(" then
            (* move down the list until we find a closing parenthesis *)
            let rec remove_until_closing_parenthesis (items : string list) : string =
                if items = [] then
                    ""
                else
                    let head = List.hd items in
                    let tail = List.tl items in
                    if head = ")" then
                        ""
                    else
                        head ^ remove_until_closing_parenthesis tail
            in
            (* call the function to remove until the closing parenthesis and return the remaining string *)
            remove_until_closing_parenthesis tail
        (* if the head is not an opening parenthesis, include it in the output and repeat the process with the tail *)
        else
            head ^ remove_parenthesis tail

