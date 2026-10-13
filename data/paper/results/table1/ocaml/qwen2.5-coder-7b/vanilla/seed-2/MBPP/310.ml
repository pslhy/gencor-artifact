let rec string_to_tuple (str1 : string) : string list = 
    let rec loop chars idx = 
        if idx >= String.length str1 then
            List.rev chars
        else
            loop (String.get str1 idx :: chars) (idx + 1)
    in loop [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
