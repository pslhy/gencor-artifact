let rec toggle_string (string : string) : string =
    let rec loop i new_str =
       if i < String.length string then
          let c = string.[i] in
          let new_c = if Char.is_uppercase c then Char.lowercase_ascii c
                      else Char.uppercase_ascii c
          in loop (i+1) (new_str ^ String.make 1 new_c)
       else new_str
    in
    loop 0 ""
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
