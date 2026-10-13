(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    if text = "" || patter = "" || text.length < pattern.length 
    then ( None, (-1), (-1) ) 

    else 
        if text.[0] = 'pattern.[0]'
        then 
    (
        let occ, pos = occurance_substring(text.[1]) pattern.[1]) 
        in ( if occ.is_some() 
             let pos = Some (pos + 1) 
             in occ
             end), pos 

        else 
 ( None, (-1), (-1) )
)

in
(([Some 0], Some 0))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    if text = "" || patter = "" || text.length < pattern.length 
    then ( None, (-1), (-1) ) 

    else 
        if text.[0] = 'pattern.[0]'
        then 
    (
        let occ, pos = occurance_substring (text.[1]) pattern.[1]) 
        in ( if occ.is_some() 
             let pos = Some (pos + 1) 
             in occ
             end), pos 

        else 
 ( None, (-1), (-1) )

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:23: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    if text = "" || pattern = "" || String.length text < String.length pattern
    then (None, -1, -1)
    else if text.[0] = pattern.[0] 
    then (let (occ, pos) = occurance_substring (String.sub text 1 (String.length text - 1)) pattern in
        if occ.is_some()
        then (occ, pos + 1)
        else (None, -1, -1))
    else (None, -1, -1)

