
let rec replace_spaces (string : string) : string =
    let space_count = String.length string in
    let spaces = ref 0 in
    let new_string = ref string in
    for i = 0 to space_count - 1 do
        if string.[i] = ' ' then (
            incr spaces;
            let new_char = ' '
            in
            String.blit "%20" 0 !new_string i 2
        );
    done;
    let new_string = 
        if !spaces > 0 then 
            String.sub !new_string 0 (space_count - !spaces) ^ 
            String.sub !new_string space_count (space_count - !spaces)
    else 
        !new_string 
    in
    new_string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
