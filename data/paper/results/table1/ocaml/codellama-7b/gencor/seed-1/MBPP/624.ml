
let rec is_upper (string : string) : string =
    let is_uppercase s =
        match s with
        | "" -> false
        | _ -> Char.lowercase_ascii s.[0] = s.[0]
    in
    if is_uppercase string then
        string
    else
        is_upper (String.sub string 1 (String.length string - 1))

and to_upper (str : string) =
    String.make (String.length str)
        (let i = ref 0 in
         while !i < String.length str do
             String.unsafe_get str !i
         done;
         for i = 0 to !i do
             let c = String.unsafe_get str i in
             if Char.lowercase_ascii c = c then
                 Char.uppercase_ascii c
             else
                 c
         done)

let _ = Printf.printf "%s\n"
    (to_upper "hello world")

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
