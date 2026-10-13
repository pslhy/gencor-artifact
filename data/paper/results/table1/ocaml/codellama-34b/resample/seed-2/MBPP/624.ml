(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
    match string with
    | [] -> []
    | hd :: tl -> hd :: is_upper tl

let is_uppercase (string : string) : bool =
    match string with
    | [] -> false
    | hd :: tl -> is_uppercase hd && is_uppercase tl

let convert_to_upper (string : string) : string =
    let () = print_string ("The original string is " ^ string ^ ".\n") in
    let rec convert = function
        | [] -> []
        | hd :: tl -> hd :: convert tl
    in
    let upper_string = convert string in
    let () = print_string ("The uppercase string is " ^ upper_string ^ ".\n") in
    upper_string

let () =
    let string = "Hello, World!" in
    let converted_string = convert_to_upper string in
    print_string ("The converted string is " ^ converted_string ^ ".\n")

