let rec is_upper (string : string) : string =
    match string with
    | [] -> []
    | h :: t -> h :: to_upper t

let rec to_upper (string : string) : string =
    match string with
    | [] -> []
    | h :: t -> if is_upper [h]
                then h :: to_upper t
                else (String.make 1 (Char.uppercase h)) :: to_upper t

let convert_to_upper (string : string) : string =
    to_upper string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
