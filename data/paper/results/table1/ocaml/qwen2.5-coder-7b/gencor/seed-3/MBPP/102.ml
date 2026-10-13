
let rec snake_to_camel (word : string) : string = 
  let rec helper (chars : char list) (capitalize_next : bool) : string = 
    match chars with 
    | [] -> ""
    | '_' :: rest -> if capitalize_next then 
                      let (head::tail) = rest in 
                      string_of_int (Char.code head - 96) ^ helper tail false 
                    else helper rest false 
    | c :: rest -> if capitalize_next then 
                     Char.uppercase_ascii c ^ helper rest false 
                   else Char.lowercase_ascii c ^ helper rest false 
  in helper (String.to_seq word |> Seq.to_dispenser

































seek_in
 `snake_to_camel` in_channel_length stdout
    (List.rev (helper (String.to_seq seek_in
 string_of_int (Char.code set_binary_mode_in
"default-templates" "Directory Index"










stderr





stderr
epsilon_float
ceil
classify_float




stderr



stderr


stderr

stderr

stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stderr
stde

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
