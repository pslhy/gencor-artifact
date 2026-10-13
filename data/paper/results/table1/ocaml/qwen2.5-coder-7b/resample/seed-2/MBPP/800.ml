(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> List.rev result
        | ' ' :: t -> loop t result
        | h :: t -> loop t (h :: result) in
    string_of_list (loop (List.of_string text) [])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:5: Unbound value "string_of_list" *)
(*     Hint: Did you mean "string_of_int"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_all_spaces (text : string) : string = 
    let rec loop chars result = 
        match chars with
        | [] -> List.rev result |> String.concat ""
        | ' ' :: t -> loop t result
        | h :: t -> loop t (h :: result) in
    loop (List.of_string text) []

