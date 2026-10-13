(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Task *)
(*     Write a function that takes a string as input and returns the sum of the upper characters only' *)
(*     ASCII codes. *)
(*     Examples: *)
(*     >>> digitSum "" *)
(*     0 *)
(*     >>> digitSum "abAB" *)
(*     131 *)
(*     >>> digitSum "abcCd" *)
(*     67 *)
(*     >>> digitSum "helloE" *)
(*     69 *)
(*     >>> digitSum "woArBld" *)
(*     131 *)
(*     >>> digitSum "aAaaaXa" *)
(*     153 *)
let rec digitSum (s : string) : int = 
    let rec sum chars = function
        | [] -> chars
        | h::t -> 
            if h >= 'A' && h <= 'Z' 
            then sum ((int h)::chars) t
            else sum chars t
    in
    let asciiList = sum [] (List.of_seq (String.to_seq s)) in
    List.fold_left (+) 0 asciiList

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Unbound value "int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int = 
    let rec sum chars = function
        | [] -> chars
        | h::t -> 
            if h >= 'A' && h <= 'Z' 
            then sum ((Char.code h)::chars) t
            else sum chars t
    in
    let asciiList = sum [] (List.of_seq (String.to_seq s)) in
    List.fold_left (+) 0 asciiList

